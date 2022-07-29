import UIKit

var greeting = "Hello, playground"
import UIKit

/*
 
 Lesson 1 - Var, con, types of data
 
 
 */

var helloMSG: String = "hello swift"
//helloMSG = "hello swift"

var greeting = "Hello, playground"

withUnsafePointer(to: helloMSG) {
    print("str value \(helloMSG) has address in memory:\($0)")//String interpolation
}

let swift = "Swift 5.7"
let swiftLanguage = """
Welcome to \(swift)

Welcome to the \(swift) community. Together we are working to build a programming language to empower everyone to turn their ideas into apps on any platform.

Announced in 2014, the \(swift) programming language has quickly become one of the fastest growing languages in history. \(swift) makes it easy to write software that is incredibly fast and safe by design. Our goals for \(swift) are ambitious: we want to make programming simple things easy, and difficult things possible.

For students, learning \(swift) has been a great introduction to modern programming concepts and best practices. And because it is open, their \(swift) skills will be able to be applied to an even broader range of platforms, from mobile devices to the desktop to the cloud.
"""

print(swiftLanguage)

greeting = "Swift"
print(greeting)

let longerGreeting = greeting + " We're glad you're here!"
print(longerGreeting)

//longerGreeting = "hello"

let name: String = "AM"
let age: Int = 36
let height: Double = 193.5
let weight: Float = 91.4
let student: Bool = true
let myLetter: Character = "C"

let fullName = "M"

var myDouble: Double = 12345.12345
myDouble = 123456.12345
myDouble = 1234567.12345
myDouble = 12345678.12345
myDouble = 123456789.12345

var myFloat: Float = 12345.12345
myFloat = 123456.12345
myFloat = 1234567.12345
myFloat = 12345678.12345
myFloat = 123456789.12345


//MARK: - Casting

let castIntToDouble = Double(age) + height
print(Double(age))

let castIntToString = "I am " + String(age) + " years old."

let stringNumber = "10"
let castStringToInt = age + Int(stringNumber)!

let optionalString: String = "100a"

if let stringNumber = Int(optionalString) {
    let total = stringNumber + 10
    print("total is \(total)")
}


//MARK: - Tuples

var myNameIs: (String, String) = ("A", "M")
var myBossIs: (String, String, Int) = ("Sam", "Smith", 44)

print("my boss is \(myBossIs.0) \(myBossIs.1) and his age is \(myBossIs.2)")
