import UIKit

var greeting = "Hello, playground"
class Game{
    var score = 0 {
        didSet {
            print("Score now: \(score)")
        }
    }
}

var newGame = Game()
newGame.score += 15

class BoardGame {
    var name: String
    var minimumPlayers = 1
    var maximumPlayers = 4
    init(name: String) {
        self.name = name
    }
}

class Employee {
    let hours: Int
    
    init (hours: Int) {
        self.hours = hours
    }
    
    func printSummary(){
        print("I work \(hours) hours a day")
    }
}

 class Developer: Employee {
    func work() {
        print("I'm working code for \(hours) hours.")
    }
    
    override func printSummary() {
        print("I'm a developer who will sometimes work \(hours) hours a day, but other times spend hours arguing about whether code should be indented using tabs or spaces.")

    }
}

final class Manager: Employee {
    func work () {
        print("I'm going to meetings for \(hours) hours.")
    }
}

let robert = Developer(hours: 8)
let joseph = Manager(hours: 10)
robert.work()
joseph.work()

let novall = Developer(hours: 8)
novall.printSummary()

class Vehicle {
    let isElectric: Bool
    init(isElectric: Bool) {
        self.isElectric = isElectric
    }
}

class Car: Vehicle {
    let isConvertible: Bool
    init(isElectric: Bool, isConvertible: Bool){
        self.isConvertible = isConvertible
        super.init(isElectric: isElectric)
        
    }
}

let db12 = Car(isElectric: false, isConvertible: true )
print(db12.isConvertible)

class Instrument {
    var name: String
    init(name: String) {
        self.name = name
    }
}
class Piano: Instrument {
    var isElectric: Bool
    init(isElectric: Bool) {
        self.isElectric = isElectric
        super.init(name: "Piano")
    }
}

let piano = Piano(isElectric: true)

// COPY

class User {
    var username = "Annonymous"
    
    func copy() -> User {
        let user = User()
        user.username = username
        return user
    }
}

var user1 = User()
var user2 = user1.copy()
print(user2.username)
user2.username = "taylor"
print(user1.username)
print(user2.username)

//  DEINITIALIZER

class Login {
    let id: Int
    init (id: Int){
        self.id = id
        print("User \(id): I'm alive")
    }
    deinit {
        print("User \(id): I'm dead")
    }
}
var users = [Login]()
for i in 1...3 {
    let user = Login(id: i)
    print("User \(user.id): I'm in control")
    users.append(user)
}

print("Loop is finished")
users.removeAll()
print("Array is clear")

class Student {
    var name = "Paul"
}

let jay = Student()
jay.name = "Jay"
print(jay.name)


