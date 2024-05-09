//
//  autitoViewController.swift
//  fabricaAutomoviles
//
//  Created by Joaquin Villarreal on 14/03/2024.
//

import UIKit

class autitoViewController: UIViewController {
    
    @IBOutlet weak var informacionLabel: UILabel!
    
    @IBOutlet weak var myImage: UIImageView!
    
    var tipoAutomovil: Automovil?
    var tipoAutomovilElectrico: AutomovilElectrico?
    var automovilNormal: Automovil?
    var automovilElectrico: AutomovilElectrico?
    var estadoAutomovil = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        switch tipoAutomovil {
        case 0:
            automovilNormal = Automovil()
            informacionLabel.text = "Se creo el auto normal correctamente"
            
        case 1:
            automovilElectrico = AutomovilElectrico()
            informacionLabel.text = "Se creo el auto Electrico correctamente"
            
        default:
            print("Error")
        }
        
    }
    
    @IBAction func mostrarInformacion(_ sender: Any) {
        
}
    
    @IBAction func encender(_ sender: Any) {
        
        informacionLabel.text = "El auto ahora esta Encendido"
    }
    
    @IBAction func apagar(_ sender: Any) {
        
        informacionLabel.text = "El auto ahora esta Apagado"
    }
    
    @IBAction func acelerar(_ sender: Any) {
        
        informacionLabel.text = "El auto ahora esta Acelerando"
    }
}
