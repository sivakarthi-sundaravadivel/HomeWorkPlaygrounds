import UIKit

/*
Exercise 1
1.Create new Class Orange(Fruit). Inside the Class declare:
     color = ""
     teste = ""
     weight = 0.0
 2.Make Class example from Orange Class and named it as someOrange.
 3.Give specific value for:
     color = "Orange"
     taste = "Sweet"
     weight = 0.66
 4.print("My \(someOrange.weight) kg orange has \(someOrange.color) color and \(someOrange.taste) taste")
*/

class Orange{

    var color = ""
    var taste = ""
    var weight = ""
}

let aboutOrange = Orange()

aboutOrange.color = "Orange"
aboutOrange.taste = "Sweet"
aboutOrange.weight = "0.66"

print("My \(aboutOrange.color) kg orange has \(aboutOrange.taste) color and \(aboutOrange.weight)")


/*
Exercise 2
1.Create new Parent(Superclass) Class Figure. Inside the Class declare:
         height: Float
         width: Float
         radius: Float
         square: Float
         perimeter: Float
 2. init(height: Float, width: Float) and 2 methods:
         func squareOfFigure() -> Float { return square }
         func perimeterOfFigure() -> Float { return perimeter }
 3.Create new Child(Subclass) Rectangle of Paret Class Figure
 3.Inside Rectangle override func squareOfFigure() -> Float to calculate and return square and override func perimeterOfFigure() -> Float to calculate and return perimeter !
 4.Inside Rectangle make a func description() where we can print("Rectangle area is: \(squareOfFigure()), and perimeter Of Figure is: \(perimeterOfFigure())")
 5.Make Class example from Rectangle Class and named it as myRectangle and give a value as you want for height and width.
 6.Finally call myRectangle.description()
*/

class Figure{

    var height: Float = 0.0
    var width: Float = 0.0
    var radius: Float = 0.0
    var square: Float = 0.0
    var perimeter: Float = 0.0

    func squareOfFigure(height: Float, width: Float) -> Float {

        return square
    }

    func perimeterOfFigure(height: Float, width: Float) -> Float {
    
        return perimeter
    }

}

class Rectangle : Figure {

    override func squareOfFigure(height: Float, width: Float) -> Float {
        
        self.height = 5.0
        self.width = 6.0
        
        let areaOfRectangle = (height + width) * 2
        
        print("Rectangle area is \(areaOfRectangle)")
        
        
        return square
    }
    override func perimeterOfFigure(height: Float, width: Float) -> Float {
        
        return perimeter
    }


}

let rectangle = Rectangle()

func calFigure(_ figure: Figure){
}

calFigure(rectangle)

