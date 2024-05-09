//
//  ViewController.swift
//  Example2
//
//  Created by Joaquin Villarreal on 11/03/2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var buttonRosa: UIButton!
    @IBOutlet weak var buttonNegro: UIButton!
    @IBOutlet weak var buttonVerde: UIButton!
    
    var titulo: String?
    var backgroundColor: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let tituloFinal = titulo{
            self.title = tituloFinal
            
            if let backgroundColor = backgroundColor{
                view.backgroundColor = backgroundColor
            }
            
            
        }
    }
}
