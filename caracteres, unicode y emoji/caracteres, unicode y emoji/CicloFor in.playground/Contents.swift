import UIKit

var contadora = 0
var paisesDiccionary = ["MX":"Mexico", "EEUU":"Estados Unidos", "ARG":"Argentina"]
//Los ciclos For sirven para itinerar sobre una coleccion de datos/items y ejecutar un bloque de codigo por cada uno de los items de la coleccion o rango

//Sirve para repetir muchas veces un codigo y te sirve para ver los valores de un array o un range

// Variable    //Range
for numero in 1...4 {
    contadora = contadora + 1
    print(numero)
}

for (pais, significado) in paisesDiccionary {
    print("\(pais)---\(significado) ")
}

var numeros = [1,2,3,4,5,6,7,8,9]
var suma = 0

for numero in numeros {
    suma = numero + suma
}
    print("La suma de los numeros es: \(suma)")

