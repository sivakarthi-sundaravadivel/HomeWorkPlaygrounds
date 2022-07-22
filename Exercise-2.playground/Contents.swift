import UIKit
import Foundation

/*
 Ex1:
 1.1 Declare two variables of type Float and assign each a number with a fractional part - for example, 3.14 or 42.0
 1.2 Declare another variable of type Double and assign it the sum of two variables of type Float
 1.3 Print the result with print ()

 */

var firstVariable: Float = 10.23
var secondVariable: Float = 23.56

var additionOfFloat: Double = Double(firstVariable) + Double(secondVariable)

print("Addition of two float variable is \(additionOfFloat)")


/*
 Ex2:
 2.1 Create a variable numberOne and assign any integer value to it
 
 2.2 Create another integer variable numberTwo and assign it any value less than numberOne
 
 2.3 Set the new integer constant result to the result of dividing numberOne by numberTwo
 
 2.4 Assign the new integer constant remainder the remainder of numberOne divided by numberTwo
 
 2.5 Output to the console the message: "When dividing <...> by <...>, the result is <...>, the remainder is <...>".
 
 */

var numberOne = 12
var numberTwo = 10

let result = numberOne/numberTwo

let reminder = numberOne % numberTwo

print("When dividing \(numberOne) by \(numberTwo), the result is \(result), the remainder is \(reminder)")


/*
 Ex3:
 You need to buy several new MacBook Pro, each cost 1000 EUR.
 If you are buying 5 and more, with discount it will cost you 900 each! If you are buying 10 and more with discount it will cost you 850 each! Create if-else statements to check Conditions of buying in different amount!
 print("new: \(qty) MacBook Pro with the price of: \(price) EUR, will cost you: \(totalSum) Eur")
 */

var quantity: Int = 10

var price : Int = 1000

var minimumQuantity : Int = 1

var firstDiscount : Int = 900

var secondDiscount : Int = 850

let firstEligibility : Int = 5

let secondEligibility : Int = 10

var invoiceprice : Int


if quantity < minimumQuantity
{
    print("Please enter the valid quantity")
}
else if quantity < firstEligibility
{
    invoiceprice = quantity * price
    print("new: \(quantity) MacBook Pro with the price of: \(price) EUR, will cost you: \(invoiceprice) Eur")
}
else if quantity >= firstEligibility && quantity < secondEligibility
{
    invoiceprice = quantity * firstDiscount
    print("new: \(quantity) MacBook Pro with the price of: \(firstDiscount) EUR, will cost you: \(invoiceprice) Eur")
}
else if quantity >= secondEligibility
{
    invoiceprice = quantity * secondDiscount
    print("new: \(quantity) MacBook Pro with the price of: \(secondDiscount) EUR, will cost you: \(invoiceprice) Eur")
}

/*
 Ex4:
 Create String userInputAge and put value "33a" and convert to Int to make Fatal error: Unexpectedly found nil while unwrapping an Optional value!
 Fix this Fatal error inside the if-else statements to print whenever this age can be converted to Int or not!
 */

var userInputAge = "33a"

//var userAge = Int(userInputAge)!

var userAge = Int(userInputAge)


if userAge == nil
{
 print("given value \(userInputAge) is not valid age")
}

else
{
    print("user age is \(userInputAge)")
}

/*
 Ex5:
 Calculate the number of years, months, days have passed from you birthday to current date.
 print("Total years: \(totalYearsFromBirth) , total months: \(totalMonthFromBirth), total days: \(totalDaysFromBirth) have passed")
 */


//predefined data

let daysInYear = 365

let daysInMonth = 30

let monthsInYear = 12

// Getting current date

let currentDateTime = Date()

let userCalendar = Calendar.current

let requestedComponents: Set<Calendar.Component> = [
    .year,
    .month,
    .day,
    
]


let dateTimeComponents = userCalendar.dateComponents(requestedComponents, from: currentDateTime)

dateTimeComponents.day

dateTimeComponents.month

dateTimeComponents.year

// user inputs

let CurrentDate: Int? = dateTimeComponents.day

let CurrentMonth: Int? = dateTimeComponents.month

let CurrentYear: Int? = dateTimeComponents.year

var userDateOfBirth: Int? = 22

var userMonthOfBirth: Int? = 5

var userYearOfBirth: Int? = 1996


let totalyears = CurrentYear! - userYearOfBirth!

var leapyr : Int = 0

//Number of leapyear days calculation

for leap in (userYearOfBirth)!...CurrentYear!{
    if leap % 4 == 0
    {
        leapyr = leapyr + 1
    }
    
}


if userDateOfBirth! >= 1 && userDateOfBirth! <= 31 && userMonthOfBirth! >= 1 && userMonthOfBirth! <= 12 && userYearOfBirth! < CurrentYear!
{
    if CurrentMonth! >= userMonthOfBirth!
    {
        
        let numberOfYears = CurrentYear! - userYearOfBirth!
        let numberOfMonths = CurrentMonth! - userMonthOfBirth!
        let totalMonths = (numberOfYears * monthsInYear) + numberOfMonths
        
        let daysDifference = CurrentDate! - userDateOfBirth!
        
        let numberOfDays = (numberOfYears * daysInYear) + (numberOfMonths * daysInMonth)
        let totalDaysFromBirth = numberOfDays + leapyr + daysDifference
        
        print("Since you born Totaly \(numberOfYears) years, \(totalMonths) months, and \(totalDaysFromBirth) days have passed ")
        
    }
    else if CurrentMonth! < userMonthOfBirth!
    {
        
            let numberOfYears = CurrentYear! - userYearOfBirth! - 1
            let numberOfMonths = (monthsInYear - userMonthOfBirth!) + CurrentMonth!
            
            
            let totalMonths = (numberOfYears * monthsInYear) + numberOfMonths
            
            let daysDifference = CurrentDate! - userDateOfBirth!
            
            let numberOfDays = (numberOfYears * daysInYear) + (numberOfMonths * daysInMonth)
            let totalDaysFromBirth = numberOfDays + leapyr + daysDifference
            print("Since you born Totaly \(numberOfYears) years, \(totalMonths) months, and \(totalDaysFromBirth) days have passed ")
    }

}
else {
    print("Please give a valid input")
}


/*
 Ex6:
 Use Exercise 5 monthOfBirth to calculate in which quarter of the year you were born.
 Use switch case to print("I was born in the ... quarter")
 */


if userMonthOfBirth! >= 1 && userMonthOfBirth! <= 3
{
    print("You have born in FIRST quater")
}
else if userMonthOfBirth! >= 4 && userMonthOfBirth! <= 6
{
    print("You have born in SECOND quater")
}
else if userMonthOfBirth! >= 7 && userMonthOfBirth! <= 9
{
    print("You have born in THIRD quater")
}
else if userMonthOfBirth! >= 10 && userMonthOfBirth! <= 12
{
    print("You have born in FOURTH quater")
}
else
{
    print("Please give a valid input")
}
