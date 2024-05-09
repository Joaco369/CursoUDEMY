//
//  ViewController.swift
//  ExampleProject
//
//  Created by Joaquin Villarreal on 03/03/2024.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var etiqueta: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        etiqueta.text = "Hola ya cambie"
        etiqueta.text = "Hola ya cambie por segunda"
        etiqueta.text = "Hola ya cambie por tercera"
        etiqueta.text = "Hola ya cambie por cuarta"
    }
    @IBAction func CambioText(_ sender: Any) {
        etiqueta.text = "Hola Mundo Maravilloso"
    }

}

