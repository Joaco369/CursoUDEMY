import Foundation

//Manejo de Errores.

func suma(firstNumber: Int?, secondNumber: Int?) throws -> Int {
    
    if firstNumber == nil{
        throw sumError.firstNumberNil
        
    } else if secondNumber == nil {
        throw sumError.secondNumberNil
        
    } else if firstNumber! < 0 || secondNumber! < 0 {
        throw sumError.numberNegative(firstNumber: firstNumber!, secondNumber:secondNumber!)
    }
    return firstNumber! + secondNumber!
}

//Definicion de tipos de errores. Se crea a traves de un Enum. y el nombre de nuestra funcion

enum sumError: Error {
    case firstNumberNil
    case secondNumberNil
    case numberNegative(firstNumber: Int, secondNumber: Int)
}

// Propagacion de Errores
do{
    
    print (try suma(firstNumber: 20, secondNumber: -20))
    
} catch sumError.firstNumberNil {
    print("El primer numero es nulo")
} catch sumError.secondNumberNil {
    print("El segundo numero es nulo")
} catch sumError.numberNegative(let firstNumber, let secondNumber) {
    print("Uno o dos de los numeros son negativos. first number: \(firstNumber), Second number: \(secondNumber)")
}
