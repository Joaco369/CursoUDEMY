import UIKit

// Mapeo de algoritmos.

var myArray = [5,8,1,0,3,9,7,2,4,6]

let myDictionary = [5: "Cinco", 8: "ocho", 1: "uno", 0: "cero", 3: "tres", 9: "nueve", 7: "siete", 2: "dos", 4: "cuatro", 6: "seis"]


let mySet: Set = [5,8,1,0,3,9,7,2,4,6]

let myMapArray = myArray.map { (MyInt) -> Int in
    return MyInt + 10
}
print(myMapArray)

let myStringArray = myArray.map { (MyInt) -> String in
    return "El numero es: \(MyInt)"
}
print(myStringArray)

let myMapString = myDictionary.map { (MyElement) -> Int in
    return MyElement.key
}
print(myMapString)

let myMapString2 = mySet.map { (MyString) -> String in
    return "\(MyString)"
}

print(myMapString2)
