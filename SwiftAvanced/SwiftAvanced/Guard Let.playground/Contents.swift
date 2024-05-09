import UIKit

//Salida Rapida

var myOptionalString: String?

func myFuction () {
    
    guard let myString = myOptionalString else {
        print("Mi cadena es nula")
        return
    }
    print("El valor de mi cadena es: \(myString)")
}
myFuction()

myOptionalString = "que les parece la clase?"

myFuction()
