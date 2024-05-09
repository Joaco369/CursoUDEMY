//
//  MapView.swift
//  SwiftUITutorial
//
//  Created by Joaquin Villarreal on 27/03/2024.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    func makeUIView(context: Context) -> MKMapView {
        
        MKMapView(frame: .zero)
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        
        let coordinate = CLLocationCoordinate2D(latitude: -37.312925044347686, longitude: -59.98596804023221)
        
        let span = MKCoordinateSpan(latitudeDelta: 50, longitudeDelta: 2)
        
        let region = MKCoordinateRegion(center: coordinate, span: span)
        
        uiView.setRegion(region, animated:  true)
    }
}
#Preview {
    MapView()
}
