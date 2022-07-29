import UIKit

/*
 Exercise 1
 Declare myTeam as Girls or Boys.
 Create a Dictionary resultsOfGames where Key contains teamName as String and Value of two [String] results.
 Print the output, for example:
 Girls against Brooklyn Nets scored - 99:89
 Girls against Brooklyn Nets scored - 109:99
 Girls against Dallas Mavericks scored - 87:93
 Girls against Dallas Mavericks scored - 104:97
 Girls against Washington Wizards scored - 117:112
 Girls against Washington Wizards scored - 107:122
 */

let myTeam = "BOYS"
let gameResults = ["Brooklyn Nets " : ["99:09","109:09"], "Dallas Mavericks" : ["87:93","104:97"], "Washington Wizards" : ["117:112","107:122"]]

for (myTeamName, score) in gameResults{
    for teamScore in 0..<score.count{
        print("\(myTeam) against \(myTeamName) scored - \(score[teamScore])")
    }
}



/*
 Exercise 2
 Declare an Array of Int. In the wallet you have only 1x by 5 - 500 EUR.
 Create a func to calculateCash sum of your cash inside your wallet.
 Run the func.
 */


let wallet = [5,10,20,50,100,200,500]

var myMoney = 0

func sumOfCash(wallet: [Int]) -> Int{
    
    for money in wallet {
        myMoney += money
    }
    return myMoney
    
}
print("Total money in my wallet \(sumOfCash(wallet: wallet))")

/*
 Exercise 3
 Create a func isEvenNumber to calculate if a number is odd or even. If the number is even func should return true.
 Run the func.
 */

func checkEvenNumber(inputNumber : Int) -> Bool
{
    if inputNumber % 2 == 0
    {

        return true
    }
    return false
}

print("19 is an even number: \(checkEvenNumber(inputNumber: 19))")
print("22 is an even number: \(checkEvenNumber(inputNumber: 22))")


/*
 Exercise 4
 Create a func createArray to calculate some number from start: to end: than return Int array.
 Declare array and put createArray(from: 1, to: 100)
 print(array)
 */
func createArray(from : Int, to : Int) -> [Int]
{
    var newArray : [Int] = []
    
    for arrayValue in from...to{
        newArray.append(arrayValue)
    }
    return newArray
}

var array = createArray(from: 1, to: 100)
print(array)


/*
 Exercise 5
 Create for loop.
 Use array result from Exercise 4.
 Use isEvenNumber from Exercise 3.
 Calculate and remove isEvenNumber using if array.firstIndex of number, inside the if array.remove at index.
 It should be 1/2 of createArray and started from [1,3,5.....
 */

let arrayOfInts = array

for i in 0..<arrayOfInts.count {
    switch checkEvenNumber(inputNumber: arrayOfInts[i]){
    case true:
        if let myIndex = array.firstIndex(of: arrayOfInts[i]){
            array.remove(at: myIndex)
        }
    default:
        break
    }
}

print("arrayOfInts: ", array)

let resultFilter = array.filter({$0 % 2 != 0})
print("resultFilter: ", resultFilter)

array.removeAll(where: checkEvenNumber)
print("removeAll: ", array)

