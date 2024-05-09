import UIKit

//Enlaces opcionales: Sirve para saber el valor no nulo de la variable Opcional

var myOptionalString: String?
var myOptionalString2: String?
var myOptionalString3: String?

myOptionalString = "Joaco"
myOptionalString2 = "Tomas"
myOptionalString3 = "Julian"


if let myString = myOptionalString, let myString2 = myOptionalString2, let myString3 = myOptionalString3 {
    print("\(myString) \(myString2) \(myString3)")
} else {
    print("Alguna variable es nula")
}

//Desempaquetado Forzado

if myOptionalString != nil {
    print(myOptionalString!)
}
