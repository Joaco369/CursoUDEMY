import UIKit

// Repeat While es un ciclo. REPITE algo MIENTRAS esto sea verdadero.

var numeros = [1,2,3,4,5,6,7,8,9,10]
var i = numeros.count - 1

repeat {
    numeros.remove(at: i)
    i -= 1
    
    print("La cantidad de numeros es: \(numeros.count) ")
    print("y ahora es de: \(i)")
    
} while (numeros.count > 0)

print("la cantidad de numeros es: \(numeros.count) ")


//Prueba de numeros aleatorios con Repeat While

var numerosAleatorios:Int
var n = 0

repeat {
    n += 1
    numerosAleatorios = Int(arc4random_uniform(10))
    print("El ciclo se ejecuta: \(n) veces")
    print("El numero aleatorio es: \(numerosAleatorios)")
    
} while (numerosAleatorios != 8)
