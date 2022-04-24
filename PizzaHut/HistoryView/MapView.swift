//
//  MapView.swift
//  PizzaHut
//
//  Created by Ravi Kiran HR on 24/04/22.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    var latitude: Double
    var longitude: Double
    var regionRadius: Double
    
    func makeUIView(context: Context) -> MKMapView{
        MKMapView(frame: .zero)
    }
    func updateUIView(_ view: MKMapView, context: Context){
        let coordinate = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
        view.setRegion(MKCoordinateRegion(center: coordinate, latitudinalMeters: regionRadius, longitudinalMeters: regionRadius),animated: true)
        let annotation = MKPointAnnotation()
        annotation.coordinate = coordinate
        view.addAnnotation(annotation)
    }
}

