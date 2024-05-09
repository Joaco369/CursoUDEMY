import UIKit

var arregloNumerosMutable = [1, 2, 3]

let arregloNumerosInmutables = [3, 2, 1]

//add Value Array
arregloNumerosMutable.append(5)
arregloNumerosMutable.insert(4, at: 3)

//Remove Value Array
arregloNumerosMutable.removeLast()
arregloNumerosMutable.remove(at: 3)

print(arregloNumerosMutable)
