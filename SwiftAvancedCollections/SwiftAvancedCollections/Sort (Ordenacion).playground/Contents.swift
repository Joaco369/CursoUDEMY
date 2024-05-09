import UIKit

var myArray = [5,8,1,0,3,9,7,2,4,6]

let myDictionary = [5: "Cinco", 8: "ocho", 1: "uno", 0: "cero", 3: "tres", 9: "nueve", 7: "siete", 2: "dos", 4: "cuatro", 6: "seis"]


let mySet: Set = [5,8,1,0,3,9,7,2,4,6]

// Sort (Ordenacion)

/*print(myArray)
myArray.sort()
print(myArray)*/

// Se puede ordenar solo los Arrays con Sort

// No se puede ordenar myDictionary. No es soportado
// No se puede ordenar mySet. No es soportado


// Sorted (Ordenacion) (De colecciones)

print(myArray)
var myArraySorted = myArray.sorted()
print(myArray)
print(myArraySorted)

myArraySorted = myArray.sorted {(IntA, IntB) -> Bool in
    return IntA > IntB
}
print(myArraySorted)

let myDictionarySorted = myDictionary.sorted {(ElementA, ElementB) -> Bool in
    return ElementA > ElementB
}

print(myDictionarySorted)

var mySortedSet = mySet.sorted {(IntA, IntB) -> Bool in
    return IntA > IntB
}
print(mySortedSet)
