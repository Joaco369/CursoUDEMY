import UIKit

// Algoritmos para colecciones (Iteracion)

var myArray = [5,8,1,0,3,9,7,2,4,6]

let myDictionary = [5: "Cinco", 8: "ocho", 1: "uno", 0: "cero", 3: "tres", 9: "nueve", 7: "siete", 2: "dos", 4: "cuatro", 6: "seis"]


let mySet: Set = [5,8,1,0,3,9,7,2,4,6]

myArray.forEach{(myInt) in
    print(myInt)
}

print("")
myDictionary.forEach {(myElement) in
    print(myElement.key)
}

print("")

mySet.forEach { (myInt) in
    print(myInt)
}
