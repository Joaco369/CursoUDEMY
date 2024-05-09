import UIKit

var ArrayEjemplo = [1,2,3,4,5,6,7,8,9]

//Two-sided range operator (Tiene un indice inicial y un indice final) no podemos formar un rango desde un limite superior.

var subSetArray = ArrayEjemplo[1...3]

//One-sided range operator (le damos el valor de un solo lado)

var subSetArray2 = ArrayEjemplo[...3]

var rangoCerrado = 1...5
