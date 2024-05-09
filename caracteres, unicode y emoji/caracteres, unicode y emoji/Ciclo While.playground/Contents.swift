import UIKit

//Ciclo While(Mientras) Evalua una condicion y mientras que haya esta condicion sea veradadera se va a ejecutar en el mismo bloque de codigo. En momento en que esta condicion sea falsa, se deja de ejecutar el ciclo.

var age = 10

while age < 18 {
    print("Eres menor de edad, te faltan: \(18 - age) años")
    age += 1
}
print("Ahora si ya eres mayor de edad.")
