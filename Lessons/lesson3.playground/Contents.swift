import UIKit

//MARK: - Collections Array

let arrayOfString: [String] = []
var arrayOfInt = [Int]()

var arrayOfStrings = ["a", "d", "e", "d"]
arrayOfStrings[2]

arrayOfInt = [1, 2, 3, 4, 5]
arrayOfInt = [10, 2, 3, 4, 5, 6]
arrayOfInt += [7, 8]
arrayOfInt.append(9)
arrayOfInt.isEmpty
arrayOfInt.insert(0, at: 0)
arrayOfInt.count
arrayOfInt[9] = 10
//arrayOfInt.removeAll()
//arrayOfInt = []
arrayOfInt.reverse()
arrayOfStrings.reverse()
print(arrayOfStrings)
print(arrayOfInt)

type(of: arrayOfInt)

var fruits = ["mango", "durian"]

if  !fruits.isEmpty{
    fruits.append("apple")
    fruits.removeFirst()
    fruits.insert("pear", at: 2)
    fruits.insert(contentsOf: ["cherry", "mango"], at: 3)
    print(fruits.sorted())
}

fruits.removeAll(where: { fruit in
    fruit == "pear"
})
print(fruits)


let search = fruits.contains { fruit in
    fruit == "pear"
}


var listOfIntArray: [[Int]] = [[1,2,3], [4,5,6]]
print(listOfIntArray[1][1])

//MARK: - Collections Set

var setOfCharacters = Set<Character>()

var setOfInts: Set<Int> = []


setOfCharacters = ["a", "d", "e", "d"]

setOfCharacters = ["b"]
setOfCharacters.insert("c")
setOfCharacters.insert("a")
//setOfCharacters.removeAll()
//setOfCharacters = []
setOfCharacters.contains("c")
print(setOfCharacters)


let someSorting = setOfCharacters.sorted()
setOfCharacters.sorted(by: >)
print(someSorting)

let animals: Set = ["🐨", "🦄"]
print(animals)


//MARK: - Collections Dictionaries

var stringDict = Dictionary<String, String>()

var intDict = [String: Int]()

var someDict: [String: Int] = [:]


//key : value
var student: [String: String] = [
    "firstName": "A",
    "lastName": "B",
    "dof": "1-May-1986",
    "email": "aa@aa"
]

student["firstName"]
student["firstName"] = "AM"
student.updateValue("AAA", forKey: "firstName")

student["fullName"] = "AM MM"
student.removeValue(forKey: "fullName")
student["email"] = nil
print(student)

dump(student)
type(of: student)


var fruitsList: [String: [String]] = [
    "A" : ["Apple", "Apricot"],
    "B" : ["Banana", "Blueberry"]
]

fruitsList["B"]

//for loop

for _ in 1...10 {
    print("Hello !!!")
}

var basket = 0
let apples = [
    "red apple",
    "green apple",
    "red apple",
    "green apple",
    "red apple",
    "green apple",
    "red apple",
    "green apple"
]

for apple in apples {
    if apple == "red apple"{
        basket += 1
    }
}

print("I have \(basket) red apples in my basket")

let numberOfLegs = [
    "speder" : "8",
    "ant" : "6",
    "dog" : "4"
]

for (animalName, legsCount) in numberOfLegs {
    print("\(animalName)s has \(legsCount) legs")
}


var counter = 0

while true {
    print("My counter is: \(counter)")
    counter += 1
    if counter == 20 {
        break
    }
}
