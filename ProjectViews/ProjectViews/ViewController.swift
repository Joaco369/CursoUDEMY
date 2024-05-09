//
//  ViewController.swift
//  ProjectViews
//
//  Created by Joaquin Villarreal on 07/03/2024.
//

import UIKit
import WebKit
import MapKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var myView: UIView!
    @IBOutlet weak var myImage: UIImageView!
    @IBOutlet weak var myMap: MKMapView!
    @IBOutlet weak var myWebView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Mostramos titulo de ViewController
        title = "My View Controller"
        
        // Cargamos un URL en nuestro WebView
        myWebView.load(URLRequest(url: URL(string: "https://google.es")!))
        
        // Cargamos coordinadas para el mapa
        myMap.centerCoordinate = CLLocationCoordinate2D(latitude: 42.6074875, longitude: -8.3132621)
    }

    // Cuando el boton se pulsa ocultamos el View.
    @IBAction func myBottonAction(_ sender: Any) {
        myView.isHidden = true
    }
    
}

