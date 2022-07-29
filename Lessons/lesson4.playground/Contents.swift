import UIKit

//MARK: - Function


func multiplyTwoNumbers() {
    print("result:" , 3 * 5)
}

multiplyTwoNumbers()

func multiplyNumber() -> Int {
    let a = 5
    let b = 5
    
    return a * b
}

var myResult = multiplyNumber()


//func name(argument param, Data Type) return Int
func multiplyTwoNumbers(numberOne a: Int, numberTwo b: Int) -> Int {
    return a * b
}

myResult = multiplyTwoNumbers(numberOne: 2, numberTwo: 5)



func multiplyTwoNumb(numberOne: Int, numberTwo: Int) -> Int {
    
    return numberOne * numberTwo
}

myResult = multiplyTwoNumb(numberOne: 3, numberTwo: 3)

func multiplyTwoNumb(_ numberOne: Int, _ numberTwo: Int) -> Int {
    return numberOne * numberTwo
}


myResult = multiplyTwoNumb(25, 4)

func multiplyTwoNumb(_ numberOne: Int, multiply numberTwo: Int) -> Int{
    return numberOne * numberTwo
}

myResult = multiplyTwoNumb(21, multiply: 2)




func average(_ numbers: Double...) -> Double {
    var total = 0.0
    for pickNumber in numbers {
        total += pickNumber
    }
    
    return total / Double(numbers.count)
}

print("my result is:", myResult)
average(5, 10, 5, 10, 5, 10)
average(5, 10, 5, 10, 5, 10)
average(5, 10, 5, 10, 5, 10)
average(5, 10, 5, 10, 5, 10)

let someValue = 5
let arrayOfNumbers = [1,2,3,4,5,6,7,8,9]

func filterLessThen(value: Int, numbers: [Int]) -> [Int]{
    var filteredNumbers: [Int] = []
    
    for number in numbers {
        if number < value {
            filteredNumbers.append(number)
        }
    }

    return filteredNumbers
}

filterLessThen(value: someValue, numbers: arrayOfNumbers)


func calculateDateValue(from myDay: Int, _ myMonth: Int, _ myYear: Int) {
    
    let currentDate = Date()
    let userCalendar = Calendar.current
    
    var dateComponents = DateComponents()
    dateComponents.day = myDay
    dateComponents.month = myMonth
    dateComponents.year = myYear
    
    
    if let calculateDate = userCalendar.date(from: dateComponents){
        let daysPassed = userCalendar.dateComponents([.day], from: calculateDate, to: currentDate).day
        let monthsPassed = userCalendar.dateComponents([.month], from: calculateDate, to: currentDate).month
        let yearsPassed = userCalendar.dateComponents([.year], from: calculateDate, to: currentDate).year
        
        print("\(yearsPassed ?? 0) years, \(monthsPassed ?? 0) months and \(daysPassed ?? 0) days have passed since my birth day!")
    }
}

calculateDateValue(from: 1, 5, 1986)
