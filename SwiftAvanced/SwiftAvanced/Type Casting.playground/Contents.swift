import Foundation

// Type Casting (Validacion de tipo de datos)

let myString = "Joaco"
let myInt = 19

class MyClass {
    var name: String!
    var age: Int!
}

let myClass = MyClass()
myClass.name = "Joaco"
myClass.age = 19

let myArray: [Any] = [myString, myInt, myClass]

for item in myArray {
    
    //Tipe Casting
    if item is String {
        let myItemString = item as! String
        print("Mi item es de tipo String y tiene el valor: \(myItemString)")
        //Downcasting
    } else if item is Int{
        let myItemInt = item as! Int
        print("Mi item es de tipo entero y tiene el valor: \(myItemInt)")
    } else if item is MyClass{
        let myItemMyClass = item as! MyClass
        print("Mi item es de tipo MyClass y tiene el valor \(myItemMyClass.name!) y \(myItemMyClass.age!)")
    }
}

for item in myArray {
    if let myItemString = item as? String {
    print("Mi item es de tipo String y tiene el valor: \(myItemString)")
    //Downcasting
} else if let myItemInt = item as? Int{
    print("Mi item es de tipo entero y tiene el valor: \(myItemInt)")
} else if let myItemMyClass = item as? MyClass {
    print("Mi item es de tipo MyClass y tiene el valor \(myItemMyClass.name!) y \(myItemMyClass.age!)")
}
}
