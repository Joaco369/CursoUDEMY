import UIKit

//Es como una funcion pero escrito de otra manera. Se almacena dentro de una variable o constante
//Estructura

//{
    
    //(parametros) -> tipo-valor-retorno in
    
//}

let miPrimerClousure = {
 
    (materiaUno: Double, materiaDos: Double, materiaTres: Double) -> Double in
        return (materiaUno+materiaDos+materiaTres)/3
}

print("La calificacion promedio fue de: \(miPrimerClousure(100,80,30))")
