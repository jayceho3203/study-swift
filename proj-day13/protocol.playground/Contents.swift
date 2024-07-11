import UIKit

var greeting = "Hello, playground"

protocol Vehicle {
    var name: String {get}
    var currentPassengers:Int {get set}
    func estimateTime (for distance: Int) -> Int
    func travel (distance: Int)
}

struct Car: Vehicle {
    let name = "Car"
    var currentPassengers = 1
    func estimateTime(for distance: Int) -> Int {
        distance / 50
    }
    
    func travel(distance: Int) {
        print("I'm driving for \(distance)km")
    }
    
    func openSunRoof() {
        print("It's a nice day")
    }
}

struct Bicycle: Vehicle {
    let name = "Bicycle"
    var currentPassengers = 1
    func estimateTime(for distance: Int) -> Int {
        distance / 10
    }
    
    func travel(distance: Int) {
        print("I'm cycling for \(distance)km")
    }
    
}

func commute (distance: Int, using vehicle: Vehicle){
    if vehicle.estimateTime(for: distance) > 50 {
        print("That is too slow! I will try a different vehicle")
    } else {
        vehicle.travel(distance: distance)
    }
}

let car = Car()
commute(distance: 6000, using: car)

let bike = Bicycle()
commute(distance: 50, using: bike)

func getTravelEstimates(using vehicles: [Vehicle], distance: Int){
    for vehicle in vehicles {
        let estimate = vehicle.estimateTime(for: distance)
        print("\(vehicle.name): \(estimate) hours to travel \(distance) km ")
    }
}

getTravelEstimates(using: [car, bike], distance: 500)

//struct Book {
//    var name: String
//}
//
//func buy(_ book: Book){
//    print("I'm buying \(book.name)")
//}
//
//let shinichi = Book(name: "Edogawa Conan")
//buy(shinichi)

protocol Purchaseable {
    var name: String {get set}
}

//struct Book: Purchaseable {
//    var name: String
//    var author: String
//}

struct Movie: Purchaseable {
    var name: String
    var acotors: [String]
}

struct Motorbike: Purchaseable {
    var name: String
    var manufacturer: String
}

struct Coffee: Purchaseable {
    var name: String
    var strength: Int
}

func buy(_ item: Purchaseable) {
    print("I'm buying \(item.name)")
}

func getRandomNumber() -> some Equatable{
    Int.random(in: 1...5)
}

func getRandomBool() -> some Equatable{
    Bool.random()
}

print(getRandomNumber() == getRandomNumber())

// EXTENSION

var quote = "     The truth is rarely pure and never simple    "
let trimmed = quote.trimmingCharacters(in: .whitespacesAndNewlines)

extension String {
    func trimmed() -> String {
        self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
    mutating func trim() {
        self = self.trimmed()
    }
    var lines: [String] {
        self.components(separatedBy: .newlines)
    }
}

quote.trimmed()



let lyrics = """
But I keep cruising
Can't stop, won't stop moving
It's like I got this music in my mind
Saying it's gonna be alright
"""

print(lyrics.lines)

struct Book {
    let title: String
    let pageCount: Int
    let readingHours: Int
}

extension Book {
    init(title: String, pageCount: Int) {
        self.title = title
        self.pageCount = pageCount
        self.readingHours = pageCount / 50
    }
}

let lotr = Book(title: "Lord of the rings", pageCount: 1111, readingHours: 24)
let ec = Book(title: "Edogawa Conan", pageCount: 500)
print(ec.readingHours)

extension Double {
    var isNegative: Bool {
        return self < 0
    }
}

let guests = ["Mario", "Donald", "N"]

if guests.isEmpty == false {
    print(guests.count)
}

extension Collection {
    var isNotEmpty : Bool {
        isEmpty == false
    }
}

print(guests.isNotEmpty)

protocol Person {
    var name: String {get}
    func sayHello()
}

extension Person {
    func sayHello() {
        print("Hello, I'm \(name)")
    }
}

struct Employee: Person {
    let name: String
}

let taylor = Employee(name: "Taylor")
taylor.sayHello()

protocol Hamster {
    var name: String { get set }
    func runInWheel(minutes: Int)
}
extension Hamster {
    func runInWheel(minutes: Int) {
        print("\(name) is going for a run.")
        for _ in 0..<minutes {
            print("Whirr whirr whirr")
        }
    }
}
