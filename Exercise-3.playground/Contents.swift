import UIKit

/*
 Exercise 1
 The user opens a deposit in the bank for 5 years in the amount of 500_000 Eur. The interest rate per annum \(rate). Calculate the amount of income \(profit) at the end of the \(period).
 for _ in 1...period{
 }
 print("Amount of income after \(period) years will be \(profit) Eur. My total deposit will be \(deposit) Eur !")
 */

let depositAmount: Double = 500.000

let numberOfYears: Int = 5

let interestRate: Double = 5.89

var profitPerAnnum =  (interestRate / 100) * Double(depositAmount)

var totalProfit = profitPerAnnum * Double(numberOfYears)

var totalAmount = depositAmount + totalProfit

let totalProfitStr = String(format: "%.2f", totalProfit)
let totalAmountStr = String(format: "%.2f", totalAmount)

print("Amount of income after \(numberOfYears) years will be \(totalProfitStr) Eur. My total deposit will be \(totalAmountStr) Eur !")



/*
 Exercise 2
 Create an integer array with any set of numbers and  print("My even numbers are: \(evenNumber)")
 Use a % inside the for loop.
 */

var intarray = [Int]()

intarray = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]

print ("My even numbers are:")

for evenNumber in intarray{
    
    if evenNumber % 2 == 0
    {
        print (evenNumber)
    }
    
}

/*
 Exercise 3
 Inside the for loop create randomNumber for the random Int calculation. Calculate and print("Number 5 will be after \(counter) shuffles"). Don't forget to make a break inside the if statement.
 */

//let randomNumber : Int = 0

for randomNumber in 0...
{
    if randomNumber > 5
    {
        break
    }
    
    let calculation = randomNumber * randomNumber
    print("random number is \(randomNumber) calculation is \(calculation)")
    
    
}

/*
 Exercise 4
 A bug is climbing to a 10-meter electric post. During the day, bug can climb two meters, during the night she slides down to 1 meter. Determine with the help of the cycle how many days bug will climb on the top of the post. Think about which loop to use in which situation. print("bug will spend \(numberOfDays)) to reach top of the post")
 */

let electricPostHeight: Int = 10

let bugClimbingInDay: Int = 2

let bugSlidingInNight: Int = -1

var numberOfDays = 0

var heightReached = 0

for electricPostHeight in heightReached...electricPostHeight
{
    
    let heightTraveled = bugClimbingInDay + bugSlidingInNight
    
    heightReached = heightTraveled + heightReached
        
    if heightReached >= 10
    {
        print("Bug will spend \(numberOfDays) days to reach top of the post")

        break
    }
    
    numberOfDays = numberOfDays + 1
    
    
    
}

