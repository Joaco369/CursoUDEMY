//
//  File.swift
//  fabricaAutomoviles
//
//  Created by Joaquin Villarreal on 16/03/2024.
//

import Foundation

class AutomovilElectrico: Automovil {
    
    var porcentajeBateria = 100
    
    func cargarBateria() -> String {
        
        porcentajeBateria = 100
        return "Carga exitosa"
    }
}
