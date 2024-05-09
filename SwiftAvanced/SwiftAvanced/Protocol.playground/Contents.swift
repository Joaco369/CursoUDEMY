import UIKit

// Protocol

protocol personProtocol {
    var name: String { get set }
    var age: Int { get set }
    
    func fullName () -> String
}


struct programer: personProtocol {
    func fullName() -> String {
        return "El programador \(name) tiene \(age) años y su lenguaje favorito es \(language)"
    }
    
    var name: String
    var age: Int
    var language: String
}

struct teacher: personProtocol {
    func fullName() -> String {
        return "El maestro \(name) tiene \(age) años y da la asignatura \(subjet)"
    }
    
    var name: String
    var age: Int
    var subjet: String
}

let myProgrammer = programer(name: "Joaquin", age: 19, language: "Swift")
print(myProgrammer.fullName())

let myTeacher = teacher(name: "Brais", age: 32, subjet: "Matematica")
print(myTeacher.fullName())

// Protocolo Delegado

class FirstClass: secondClassProtoccol {
    func call() {
        print("Estoy de vuelta")
    }
    
    
    func callSecond() {
        let secondClass = SecondClass ()
        secondClass.delegate = self
        secondClass.callFirst()
    }
    
}

protocol secondClassProtoccol {
    
    func call()
    
}

class SecondClass {
    
    var delegate: secondClassProtoccol?
    
    func callFirst () {
        
        sleep(5)
        
        delegate?.call()
    }
    
}

let firstClass = FirstClass ()
firstClass.callSecond()
