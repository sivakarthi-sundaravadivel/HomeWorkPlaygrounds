import UIKit

var someDay = "Friday"

func setupAlarm() {
    if someDay == "Friday" {
        print("setup my alarm at 6:30AM")
    }else{
        print("no alarm")
    }
}

setupAlarm()

enum Weekday {
    
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday, sunday
}

var weekdays = Weekday.friday


func setupBedTimeAlarm() {
    
    if weekdays == .sunday || weekdays == .friday {
    
        print("setup my bed time at 11:30PM")
    
    }else{
    
        print("no alarm")
    }
}

setupBedTimeAlarm()

weekdays = .tuesday

func setupSleepAlarm() {
    
    switch weekdays {
        
    case .monday:
        print("setup my bed time at 11:30PM")
        
    case .tuesday:
        print("setup my bed time at 10:30PM")
    
    case .wednesday:
        print("setup my bed time at 11:30PM")
    
    case .thursday:
        print("setup my bed time at 11:30PM")
    
    case .friday:
        print("setup my bed time at 11:30PM")
    
    case .saturday:
        print("setup my bed time at 11:55PM")
    
    case .sunday:
        print("setup my bed time at 11:30PM")
    }
}


setupSleepAlarm()

enum Calculation: String {
    case addition = "+"
    case subtraction = "-"
    case multiplication = "*"
    case division = "/"
}

var calc = Calculation.addition
print(calc.rawValue)

enum Planet: Int {
    case venus = 1, mercury, mars, earth, jupiter, uranus, saturn, nuptune, pluton
}

var somePlanet = Planet.earth
print("Earth is the \(somePlanet.rawValue) planet from the sun")

let possiblePlanet = Planet(rawValue: 5)
print("The \(possiblePlanet?.rawValue ?? 1)th planet is \(possiblePlanet!)")


enum Weekend {
    case saturday(String)
    case sunday(String, Int, String)
}

var wnd = Weekend.sunday("Set your bed time at", 11, "PM")
print(wnd)

//MARK: - Struct
struct iPhone{
    var model: String?
    var capacity: Int?
    var color: String?
    
    func getSpecs(){
        print("\(model ?? ""), \(capacity ?? 0), \(color ?? "")")
    }
}
              
let iPhone11 = iPhone(model: "iPhone 11", capacity: 64, color: "red")

var iPhoneXR = iPhone11
iPhoneXR.model = "iPhone XR"
iPhoneXR.color = "black"

iPhone11.getSpecs()
iPhoneXR.getSpecs()




class Mac{
    var model: String?
    var year: Int?
    var color: String?
    var ssdMemory: Int?
    
    
    init(model: String, year: Int, color: String, ssdMemory: Int){
        self.model = model
        self.year = year
        self.color = color
        self.ssdMemory = ssdMemory
    }
    
    func getSpecs(){
        print("\(model ?? ""), \(year ?? 0), \(color ?? ""), \(ssdMemory ?? 0)")
    }
    
}

let macBookPro = Mac(model: "MacBookPro", year: 2018, color: "silver", ssdMemory: 516)


let macBookAir = macBookPro
macBookAir.model = "MacBook Air"
macBookAir.year = 2020

macBookPro.getSpecs()
macBookAir.getSpecs()

macBookPro === macBookAir
