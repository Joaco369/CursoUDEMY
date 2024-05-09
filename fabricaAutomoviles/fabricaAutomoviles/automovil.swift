//
//  automovil.swift
//  fabricaAutomoviles
//
//  Created by Joaquin Villarreal on 14/03/2024.
//

import Foundation

class Automovil {
    
    var marca = "Volkswagen"
    var color = "Neutro"
    var numeroLlantas = 4
    var precio = 5000
    
    func encender() -> Bool {
        return true
    }
    
    func apagar() -> Bool {
        return false
    }
    
    func acelerar() -> String {
        return "Acelerando"
    }
}
