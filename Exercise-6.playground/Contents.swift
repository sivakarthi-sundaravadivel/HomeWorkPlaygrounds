import UIKit

/*
 Exercise 1
 Create enum CalculationType as String, where will be: addition, subtraction, multiplication, division with String value
 */
/*
 Exercise 1.1
 
 Create a func calculateResult with argument firstNumber, parametrs numberOne, data type Int, + argument andSecondNumber, parametrs numberTwo, data type Int ,+ argument withCalculationType, parametrs calculationType, data type CalculationType and everything will return Int.
 
 Than use switch case to calculate and return Int result

    var result = numberOne
       
       switch calculationType {
       case .addition: result += numberTwo
        .....
       }
  print("Result:  \(calculationType.rawValue) \(numberOne) and \(numberTwo) = \(result)")
 
    return result
 
 */

/*
Exercise 1.2
Declare two numbers.
Call func 4 times for all calculateResult
*/


enum CalculationType: String {
    case addition = "+"
    case subtraction = "-"
    case multiplication = "*"
    case division = "/"
}


    
    
  
func calculateResult(numberOne : Int ,  numberTwo : Int ){
    
    
    
    
    let calculation = CalculationType.addition
    
    var result = numberOne
    

    switch calculation{
    case .addition:
        result += numberTwo
           print("Result:  \(calculation.rawValue) of \(numberOne) and \(numberTwo) = \(result)")
        
    case .subtraction:
        result -= numberTwo
        print("Result:  \(calculation.rawValue) of \(numberOne) and \(numberTwo) = \(result)")

    case .multiplication:
        result *= numberTwo
        print("Result:  \(calculation.rawValue) of \(numberOne) and \(numberTwo) = \(result)")

    case .division:
        result /= numberTwo
        print("Result:  \(calculation.rawValue) of \(numberOne) and \(numberTwo) = \(result)")

    }
    
    
}


calculateResult(numberOne: 11, numberTwo: 12)


/*
Exercise 2.1
Make example of struct Car with the name audiQ7
Make a copy of audiQ7 and name it audiTT.
Provide the correct name for audiTT
 
Than run getSpecs() for audiQ7 and audiTT
 */


struct Car{
    var name: String?
    var modelyear: Int?
    var color: String?
    var seating: Int?
    
    func getSpecs(){
        print("My car is \(name ?? ""),it is \(modelyear ?? 0) year model, My car color is \(color ?? "")and it has \(seating ?? 0) occupancy")
    }
}
              
let audiQ7 = Car(name: "Audi Q7", modelyear: 2021, color: "Silver", seating: 7)
var auditt = audiQ7
auditt.name = "Audi TT"
auditt.seating = 2


audiQ7.getSpecs()
auditt.getSpecs()

