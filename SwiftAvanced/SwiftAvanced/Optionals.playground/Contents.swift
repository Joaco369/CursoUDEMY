import UIKit

//Opcionales

let myStringNumber = "100"
let myIntNumber = Int (myStringNumber)

let myWrongString = "Joaco"
let myWrongInt = Int(myWrongString)

var myOpcionalString: String?
print(myOpcionalString)

myOpcionalString = "Bienvenidos al curso de Swift"

if myOpcionalString != nil {
    print("Nuestra variable tiene un valor distinto de nulo")
} else {
    print("Nuestra variable es nula")
}
