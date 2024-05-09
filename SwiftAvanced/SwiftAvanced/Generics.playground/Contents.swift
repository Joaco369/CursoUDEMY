import UIKit

// Genericos

// Sin genericos
func swapTwoInt (a: inout Int, b: inout Int) {
    let tempA = a
    a = b
    b = tempA
}

var myFirstInt = 5
var mySecondInt = 10

print("Mi primer valor es \(myFirstInt) y el segundo valor es \(mySecondInt)")
swapTwoInt(a: &myFirstInt, b: &mySecondInt)
print("Mi primer valor es \(myFirstInt) y el segundo valor es \(mySecondInt)")

// Con genericos

func swapTwoGenerics <T>(a: inout T, b: inout T) {
    let tempA = a
    a = b
    b = tempA
}
var myFirstGeneric = "Joaco"
var mySecondGeneric = "Villarreal"

print("Mi primer valor es \(myFirstGeneric) y el segundo valor es \(mySecondGeneric)")
swapTwoGenerics(a: &myFirstGeneric, b: &mySecondGeneric)
print("Mi primer valor es \(myFirstGeneric) y el segundo valor es \(mySecondGeneric)")
