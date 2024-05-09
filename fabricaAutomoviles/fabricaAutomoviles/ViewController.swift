//
//  ViewController.swift
//  fabricaAutomoviles
//
//  Created by Joaquin Villarreal on 14/03/2024.
//

import UIKit

class ViewController: UIViewController {

    //Creamos una variable de tipo Opcional entero
    var tipoAutomovil: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    @IBAction func crearAutomovilSencillo(_ sender: Any) {
        
        tipoAutomovil = 0
        performSegue(withIdentifier: "segueAutito", sender: self)
    }
    
    @IBAction func crearAutomovilElectrico(_ sender: Any) {
    
        tipoAutomovil = 1
        performSegue(withIdentifier: "segueAutito", sender: self)
    }
    
    // Creamos la funcion prepare para seguir a la segunda pantalla
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // Creamos una constante "destino" que su destino va a ser nuestro autitoViewController. Con esto podemos acceder a todas las propiedades de esa vista.
        if let destino = segue.destination as? autitoViewController {
            //Aca este tipoAutomovil destino esta refiriendose a la variable que esta en nuestro autitoViewController. igualamos a self que significa que tipoAutomovil es del mismo archivo en el que estamos, osea ViewController.
            //Aca este tipoAutomovil destino esta refiriendose a la variable que esta en nuestro autitoViewController. igualamos a self que significa que tipoAutomovil es del mismo archivo en el que estamos, osea ViewController.
            destino.tipoAutomovil = self.tipoAutomovil
        }
    }
    
}


