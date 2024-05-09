import UIKit

//Las enumeraciones nos permiten agrupar diferentes valores relacionados y permite trabajar con dichos valores de una manera segura para evitar errores en el codigo

//Sintaxis Enumeration

enum personalData {
    case name, surname, address, phone
}

var currentData = personalData.name
var input = "Joaco"

personalData.phone
input = "123456"

//Enumeraciones con valores asociados
enum ComplexPersonalData {
    case name(String, String), surname(String,String), address(String, Int), phone(Int)
}
//Se encarga de reflejar los datos del usuario
var complexCurrentData: ComplexPersonalData = .name("joaquin", "tomas")

complexCurrentData = .address("Aristobulo del valle", 734)

//Enumeraciones con el mismo tipo de valor
enum RawPersonalData :String{
    case name = "Nombre", surname = "Apellido", address = "Direccion", phone = "Numero de celular"
}

RawPersonalData.phone.rawValue
