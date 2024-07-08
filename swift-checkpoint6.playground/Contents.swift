import UIKit

var greeting = "Hello, playground"

struct Car {
    let model: String
    let seats: Int
    var currentGear: Int
    
    init(model: String, seats: Int) {
        self.model = model
        self.seats = seats
        currentGear = Int.random(in: 1...10)
    }
    
    mutating func changeGear(){
        var isUp = Bool.random()
        if isUp {
            if currentGear != 10 {
                currentGear += 1
                print("UP... Gear now: \(currentGear)")
            } else {
                print("The car is in the highest gear!")
            }
        } else {
            if currentGear != 1 {
                currentGear -= 1
                print("DOWN, Gear now: \(currentGear)")
            } else {
                print("The car is in the lowest gear")
            }
        }
    }
}
var sedan = Car(model: "Toyata Camry", seats: 5)
print("Current gear: \(sedan.currentGear)")
sedan.changeGear()
