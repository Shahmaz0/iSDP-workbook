//import UIKit
//
//struct Book{
//    var name: String
//    var publicationYear: Int?
//
//}
//
//let firstBook = Book(name: "Harry potter and The Sorcerer's Stone.", publicationYear: 1997)
//let secondBook = Book(name: "Harry potter and The Chamber of secrets.", publicationYear: 1998)
//let announcedBook = Book(name: "Harry potter and The iOS developers of Galgotias University.", publicationYear: nil)
//
//let serverResponseCode: Int? = nil
//
////Force Unwrap
//print(firstBook.publicationYear!)
//print(announcedBook.publicationYear!)
//print("Hello, World!")
//
//if announcedBook.publicationYear != nil{
//    let year = announcedBook.publicationYear!
//    print(year)
//} else {
//    print()
//}

//struct Toddler{
//    var name: String
//    var monthsOld: Int
//    
//    init?(name: String, monthsOld: Int) {
//        if (monthsOld > 12 || monthsOld < 36) {
//            return nil
//        } else {
//            self.name = name
//            self.monthsOld = monthsOld
//        }
//    }
//}
//
//let firstChild = Toddler(name: "Toddler", monthsOld: 12)
//let secondChild = Toddler(name: "Toddler", monthsOld: 20)
//

struct Person{
    var age: Int
    var residence: Residence?
}

struct Residence{
    var type: String
    var address: Address?
}


struct Address{
    var buildingNumber: Int?
    var streetNumber: Int?
    var apartmentNumber: Int?
}

let aPerson = Person(age: 29, residence: Residence(type: "Urban", address: Address(buildingNumber: 123, streetNumber: 321, apartmentNumber: 456)))

if let theResidence = aPerson.residence {
    if let theAddress = theResidence.address {
        if let theApartmentNumber = theAddress.apartmentNumber {
            print("The apartment number is: \(theApartmentNumber)")
        }
    }
}
// Optional chaining
if let theApartmentNumber    = aPerson.residence?.address?.apartmentNumber {
    
    print()
}
