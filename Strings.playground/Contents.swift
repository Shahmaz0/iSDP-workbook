import UIKit

let greeting = "Hi shahma, my name is Anny"
if greeting.contains("shahma"){
    print("my name is Anny")
}


let a = "Shahma Ansari"

print(a.uppercased())
print(a.lowercased())

//let character: Character = "🤣"
//let ans = character


let infinitySymbol = "\u{221E}"
print(a)

//Reverse
let name = "Shahma"
print(name.reversed())

//2.
let sentence = "my name is abu shahma ansari"
if sentence.contains("shahma") {
    print("Present")
}

//3. Concatination and interpolation
let firstName = "Shahma"
let secondName = "Ansari"

print("my name is \(firstName) \(secondName)")

//4. Extract the Substring
let str = "Hello World"

let startIndex = str.index(str.startIndex, offsetBy: 0)
let endIndex = str.index(str.startIndex, offsetBy: 5)
let range = startIndex..<endIndex

let substring = str[range]
print(substring)






