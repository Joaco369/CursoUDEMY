import UIKit

class student {
    var name: String?
    var book: book?
}

class book {
    var pages: Int?
}

let myStudent = student()

print(myStudent.name)
print(myStudent.book?.pages)

myStudent.name = "Joaco"

let myBook = book ()
myBook.pages = 50

myStudent.book = myBook

//Enlace Opcional Encadenado

if let pages = myStudent.book?.pages, let name = myStudent.name {
    print("El libro de \(name) tiene \(pages) paginas")
} else {
    print("El libro no tiene paginas")
}
