//
//  MenuDetailView.swift
//  Pizza
//  adaptive version for landscape.
//  creates two functions of views to be able to switch them between Hstack and Vstack.
//  Created by Ravi Kiran HR on 12/26/20.
//  Copyright © 2019 Ravi Kiran HR. All rights reserved.
//

import SwiftUI
///A `View`for entering in an order. Takes basic information about the order from `menuItem`

var size:Size = .medium
struct MenuDetailView: View {
    
   @EnvironmentObject var settings:UserPreferences
   @ObservedObject var orderModel:OrderModel
    @State var didOrder:Bool = false
    @State var quantity:Int = 1
    var menuItem:MenuItem
    var formattedPrice:String{
        String(format:"%3.2f",menuItem.price * Double(quantity) * settings.size.rawValue)
    }
    func addItem(){
        didOrder = true
    }
    
    func isCompactPortrait(geo:GeometryProxy)->Bool{
        return geo.size.height <= 414
    }
    
    func titleView()->some View{
         return
                HStack{
                        SelectedImageView(image: "\(self.menuItem.id)_250w")
                            .padding(5)
                    Text(self.menuItem.description)
                        .padding()
                    Spacer()
                }
            }
    
    
    
    
    func menuOptionsView()-> some View{
       return  VStack{
            SizePickerView()
            QuantityStepperView(quantity:$quantity)
            PageTitleView(title: "Order:  \(formattedPrice)")
            Spacer()
        }
    }
        
    
    var body: some View {
            VStack {
                HStack{
                    PageTitleView(title: self.menuItem.name)
                    Button(action: self.addItem) {
                        Text("Add to order")
                            
                            .font(.title)
                            .fontWeight(.bold)
                            .padding([.leading,.trailing])
                            .background(Color("G3"))
                            .foregroundColor(Color("IP"))
                            .cornerRadius(5)
                    }
                    .sheet(isPresented: self.$didOrder){
                        ConfirmView(menuID: self.menuItem.id, orderModel:self.orderModel, isPresented: self.$didOrder, quantity: self.$quantity)
                    }
                }
                VStack{
                    self.titleView()
                    self.menuOptionsView()
                }
                
                }//Root VStack
                .padding(.top, 5)
    }// body
}// MenuDetailView
struct MenuDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MenuDetailView(orderModel:OrderModel(),menuItem: testMenuItem)
            .environmentObject(UserPreferences())
    }
}

