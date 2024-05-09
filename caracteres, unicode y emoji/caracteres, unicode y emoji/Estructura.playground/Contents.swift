import UIKit

//Struct, Palabra reservada para crear estructuras

struct Cuadrados {
    
    var ancho = 10
    var alto = 10
    
    func area () -> Int {
        return ancho * alto
    }
    
}

var miCuadrado = Cuadrados ()
miCuadrado.area()
