import UIKit

//Conjuntos

var mySet = Set<String>()
let mySet2: Set<String> = ["Joaquin","Villarreal","19"]

// Insercion de uno en uno

mySet.insert("Joaquin")
mySet.insert("Villarreal")
mySet.insert("19")

print(mySet)

// Acceso

if mySet.contains("Joa") {
    print("Existe")
} else {
    print("No existe")
}

// Modificacion

mySet.remove("19")
print(mySet)

// Acceso y modificacion por indice

if let index = mySet.firstIndex(of: "Joaquin") {
    mySet.remove(at: index)
}
print(mySet)

// Iteraccion

mySet.insert("Joaquin")
mySet.insert("Villarreal")
mySet.insert("19")
mySet.insert("Bienvenidos gatosss")

for myElement in mySet {
    print(myElement)
}

// Operaciones de conjunto

let myIntSet: Set = [1,2,3,4,5]
let myIntSet2: Set = [0,2,3,6,7]

print(myIntSet.intersection(myIntSet2))

// Diferencia Simetrica

print(myIntSet.symmetricDifference(myIntSet2))

// UNION

print(myIntSet.union(myIntSet2))

// Sustraccion

print(myIntSet.subtracting(myIntSet2))
print(myIntSet2.subtracting(myIntSet))
