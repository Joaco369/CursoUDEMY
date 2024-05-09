import UIKit

//Funciones: es un bloque de codigo contenido que hace cierta funcionalidad, por Ej.Sumar (2 parametros. Variable A y Var B), Validar entrada de usario, etc...

//func cuadrado (numero:Int){
 
 //let numeroCuadrado = numero * numero
 
// print("El numero Cuadrado de \(numero) es: \(numeroCuadrado)")
// }
 
// cuadrado(numero: 25)
 
 //retorna algo
// func cubo(numero:Int) -> Int{
 
// let numero = numero * numero * numero
// return numero
 //}
 
// let resultado = cubo(numero: 10)
 
// print("El resultado del numero al cubo es: \(resultado)")
 
//func saludarAlumno(nombre: String, mensaje: String) {
    
  //  print("Hola \(nombre) \(mensaje)")
    
//}

//saludarAlumno(nombre: "Noa", mensaje: "te doy la bievenida a nuestra casa")


//func listaNombres () -> [String] {
    
  //  let arregloNombres = ["Joaquin","Gero","Alejo"]
    //return arregloNombres
//}

//    var nombres = listaNombres()
//nombres

//Nombre de Parametros externos e internos

func calificacionPromedio (matematica materiaUno: Double, quimica materiaDos: Double, biologia materiaTres: Double) -> Double {
        
        return (materiaUno+materiaDos+materiaTres)/3
}

let calificacionPromedioAlumno = calificacionPromedio(matematica: 50, quimica: 90, biologia: 50)

var resultado = calificacionPromedioAlumno
print("El resultado del promedio es: \(resultado)")

let aprobado = calificacionPromedioAlumno >= 60

if aprobado {
    print("El alumno ah sido aprobado")
} else {
    print("El alumno ah sido desaprobado")
}


