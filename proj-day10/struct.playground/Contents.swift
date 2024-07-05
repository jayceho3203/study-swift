import UIKit

var greeting = "Hello, playground"

struct Album {
    let title: String
    let artist: String
    let year: Int
    
    func printSummary() {
        print("\(title) (\(year)), by \(artist)")
    }
}

let an = Album(title: "An", artist: "Lil Wuyn", year: 2024)
an.printSummary()

let phongLong = Album(title: "Phong Long", artist: "LowG", year: 2022)
phongLong.printSummary()

print(phongLong.artist)

struct Employee {
    let name: String
    var vacationAllocated = 14
    var vacationTaken = 0
    
    var vacationRemaining: Int {
        get {
            vacationAllocated - vacationTaken
        }
        set {
            vacationAllocated = vacationTaken + newValue
        }
    }
    
}

var jayce = Employee(name: "jayce", vacationAllocated: 14)
jayce.vacationTaken += 5
print(jayce.vacationRemaining)
jayce.vacationRemaining = 7
print(jayce.vacationAllocated)

struct Game {
    var score = 0
    
}

var game = Game()
game.score += 5
print("now score is \(game.score)")
game.score -= 3
print("now score is \(game.score)")
game.score += 10
 //if you dont print the lastest score, you dont know the score now

struct Game2 {
    var score = 0 {
        didSet {
            print("score now: \(score)")
        }
    }
}

var game2 = Game2()
game2.score += 10
game2.score += 5
game2.score = 100

struct App {
    var contacts = [String]() {
        willSet {
            print("The current value is: \(contacts)")
            print("New value will be: \(newValue)")
        }
        didSet {
            print("There are now \(contacts.count) contacts")
            print("Old value was \(oldValue)")
        }
    }
}

var app = App()
app.contacts.append("Dat")
app.contacts.append("Jayce")
app.contacts.append("Nguyen")

// golden rule: all properties must have a value by the time the initializer ends.

struct Player {
    let name: String
    let number: Int
    
    init(name: String) {
        self.name = name
        number = Int.random(in: 1...99)
    }
}

var jay = Player(name: "jayce")
print(jay)

struct Hacker {
    var name: String
    var yearsActive = 0

    init() {
        self.name = "Anonymous"
        print("Creating an anonymous employee…")
    }
} // so this would no longer be allowed:
//let zed = Hacker(name: "zed")

struct Engineer {
    var name: String
    var yearsActive = 0
}

extension Engineer {
    init() {
        self.name = "Anonymous"
        print("Creating an anonymous employee…")
    }
}

// creating a named employee now works
let roslin = Engineer(name: "Laura Roslin")
print(roslin)
// as does creating an anonymous employee
let anon = Engineer()
print(anon)

struct Language {
    var nameEnglish: String
    var nameLocal: String
    var speakerCount: Int
    init(english: String, local: String, speakerCount: Int) {
        self.nameEnglish = english
        self.nameLocal = local
        self.speakerCount = speakerCount
    }
}
let french = Language(english: "French", local: "français", speakerCount: 220_000_000)
print(french)
