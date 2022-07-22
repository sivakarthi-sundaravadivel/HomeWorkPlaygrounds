import UIKit

/*
Exercise 1
Declare two string constants firstString and secondString. Assign them the values "I'm learing" and "swift". Print the phrase "I'm learing swift !!!" using these string variables.
*/

var firstString = "I'm learing"

var secondString = "swift"

print(firstString + " " + secondString + " !!!")


/*
Exercise 2.1
Create a constant named myAge and assign it the value of your age.
*/

let myAge: Int = 26


/*
Exercise 2.2
Declare an Int variable named myAgeInTenYears and assign it the value of your age after 10 years(use the constant myAge and the addition(+) operator).
*/

var myAgeInTenYears: Int = myAge + 10

/*
Exercise 2.3
Declare another daysInYear constant and set it to 365.25 (the number of days in a leap year).
*/

let daysinYear : Float = 365.25

/*
Exercise 2.4
Declare a Float variable named daysPassed and set it to the number of days since you were born plus 10 years (use myAgeInTenYears(variable) and daysInYear(constant)).
*/


//number of days since i was born calculate
var daysPassedWithYOB = Float(myAge) * daysinYear

var daysPassedCalculation = Float(myAgeInTenYears) - 10

var daysPassed = daysPassedCalculation * daysinYear



/*
Exercise 2.5
Using the print() function, print the phrases like: "My age is <...> years. After 10 years, I will be <...> years old. From the moment of my birth day have passed approximately <...>" . (Symbols (<...>) must be replaced with variable values !)
*/

print("My age is \(myAge) years. After 10 years, I will be \(myAgeInTenYears) years old. From the moment of my birth day have passed approximately \(daysPassed) days.")


/*
Exercise 3.
 
Calculate triangle's area and perimeter.
Conditions: triangle length: AC = 8.0, CB = 6.0. The hypotenuse of triangle AB is calculated using the sqrt(Double) function, replacing Double with the sum of squares of length.
 Steps:
 1.Right-angled triangle
 2.Hypotenuse of the triangle
 3.Area of a triangle
 4.Triangle perimeter
*/

func hypotenuse(_ a: Double, _ b: Double) -> Double {
    return (a * a + b * b).squareRoot()
}


let (ac , cb) = (8.0 , 6.0)

let ba = hypotenuse(ac , cb)

print("So lenth of ba = \(ba)")

let area = 1/2 * (ac) * (cb)

let perimeter = ac + cb + ba

print("Hypotenuse of the triangle \(ba), Area of the Right-angled triangle is \(area), Perimeter of triange is \(perimeter) ")



func input() -> String {
   let keyboard = FileHandle.standardInput
   let inputData = keyboard.availableData
   return String(data: inputData, encoding: .utf8)!
}

print("Please enter your name")
var name1  = input()

print("name: \(name1)")

