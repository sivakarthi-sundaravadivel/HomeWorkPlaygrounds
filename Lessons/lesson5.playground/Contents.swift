import UIKit

//MARK: - OOP

class Post {
    var postTitle = ""
    var postText = ""
    var postAuthor = ""
    var numberOfLikes = 0
    
    func addLike() {
        numberOfLikes += 1
    }
}


let firstPost = Post()

firstPost.postTitle = "my first twitter post"
firstPost.postText = "just testing"
firstPost.postAuthor = "AA"
firstPost.addLike()

print("Author - \(firstPost.postAuthor) has published a new post \(firstPost.postTitle) with the text: \(firstPost.postText)")

let secondPost = firstPost

secondPost.postTitle = "my second twitter post"
secondPost.postText = "testing"
secondPost.postAuthor = "BB"

print("Author - \(secondPost.postAuthor) has published a new post \(secondPost.postTitle) with the text: \(secondPost.postText)")


class Human {
    var name = "Undefined"
    var age = 0
    
    init() {}
    init(myName: String, myAge: Int){
        self.name = myName
        self.age = myAge
    }
}

let person = Human(myName: "Bob", myAge: 23)
let newPerson = Human()
newPerson.name = "Tom"


class Alien {
    var name: String?
    var age: Int?
    var hairs: Bool = false
    
    func alienDescription() -> String {
        if let alienAge = age {
            return "Hello, my name is \(name ?? "UUUU") and I am \(alienAge) years old!"
        }else{
            return "Hello, my name is \(name ?? "UUUU")"
        }
    }
    
    init(){
        name = "UFO"
        hairs = true
    }
    
    init(name: String, age: Int , hairs: Bool){
        self.name = name
        self.age = age
        self.hairs = hairs
    }
}//end class



let alien = Alien(name: "JSON", age: 400, hairs: true)


class Parent {
    var name = "Undefined"
    var age = 0
    
    init() {}
    init(myName: String, myAge: Int){
        self.name = myName
        self.age = myAge
    }
    
    func canWalk() {
        print("I can walk")
    }
    
    func canSleep() {
        print("I can sleep")
    }
    
    func canEat() {
        print("I can eat")
    }
    
}


let dad = Parent(myName: "Sam", myAge: 44)

class Child: Parent {
    func feeding(){
        if age <= 2 {
            print("need to feed me")
        }else{
            print("can eat by myself")
        }
    }
}

let littleBoy = Child(myName: "Tom", myAge: 4)
littleBoy.feeding()


class SchoolChild: Child {
    func learning() {
        if age >= 7 && age <= 19 {
            print("high school time")
        }else{
            print("too early for school")
        }
    }
}

let schoolBoy = SchoolChild(myName: "Q", myAge: 12)
schoolBoy.learning()


class Figure {
    func draw(){}
}

class Circle: Figure {

    
    override func draw(){
        print("Draw the circle")
    }
}

class Triangle: Figure {
    override func draw(){
        print("Draw the Triangle")
    }
}

class Rectangle: Figure {
    override func draw(){
        print("Draw the Rectangle")
    }
}

let cirle = Circle()
let rectangle = Rectangle()
let triangle = Triangle()

func drawFigure(_ figure: Figure){
    figure.draw()
}

//let circle: Figure = Circle()
//cirle.draw()

drawFigure(triangle)
drawFigure(cirle)
drawFigure(rectangle)
