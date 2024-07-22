import UIKit

var greeting: String

let opposites = [
    "Mario": "Wario",
    "Luigi": "Waluigi"
]

let peachOpposite = opposites["peach"]
print(type(of: peachOpposite))

if let marioOpposite = opposites["Mario"] {
    print("Mario's opposite is \(marioOpposite)")
}

var username: String? = nil

if let unwrapedName = username {
    print("We got a username: \(unwrapedName)")
} else {
    print("The optional was empty")
}

func square(number: Int) -> Int {
    number * number
}

var number: Int? = nil
if let number = number {
    print(square(number: number))
}

let album = "Red"
let albums = ["Reputation", "Red", "1989"]
if let position = albums.firstIndex(of: album) {
    print("Found \(album) at position \(position).")
}

// Some error:
//var score: Int = nil //=>> error, nil' cannot initialize specified type 'Int'
//score = 565

// var bestScore: Int? = nil
// bestScore = 101
// if bestScore > 100 { =>> Value of optional type 'Int?' must be unwrapped to a value of type 'Int'
//     print("You got a high score!")
// } else {
//     print("Better luck next time.")
// }

//  CANT COMPARE A NON-OPTIONAL's VALUE AGAINST AN OPTIONAL's VALUE
 

// HOW TO UNWRAP OPTIONALS WITH GUARD


func processOptionalValue (value: Int?) {
    guard let actualValue = value else  {
        print("Value is nil")
        return
    }
    print("The actual value is \(actualValue)")
}

processOptionalValue(value: nil)

var myVar: Int? = 3

if let unwrapped = myVar {
    print("print myVar if is has a value: \(unwrapped)")
}

func checkVar (value: Int) {
    guard let _ = myVar else {
        print("Run if myVar doesn't have a value inside")
        return
    }
    print( "Kho chiu vo cung")}


// NIL COALESCING OPERATOR (??)

let capitals = [
    "Vietnam" : "Hanoi",
    "China": "Beijing",
    "Korea": "Seoul"
]

let englandCapital = capitals["England", default: "Unknown"]
print(englandCapital)
// SAME
let new = capitals["England"] ?? "N/A"
print(new)

// NIL COALESCING FOR METHOD

let streamers = ["Teacher Three", "Mixi gaming", "Pewpew"]
let favorite = streamers.randomElement() ?? "None"

print("My favorite streamer is: \(favorite)")

// NIL COALESCING FOR STRUCT

struct Book {
    let name: String
    let author: String?
}

let book = Book(name: "Jayce", author: nil)
let author = book.author ?? "Anonymous"
print(author)


let input = "aa"
let num = Int(input) ?? 0
print(num)


func first() -> String? {
    nil
}

func second() -> String? {
    nil
}

let savedData = first() ?? second() ?? "empty"
print(savedData)

// HANDLE MULTIPLE OPTIONALS USING OPTIONAL CHAINING

var names : [String] = []
let chosen = names.randomElement()?.uppercased() ?? "A"
print(chosen)

var names2 = ["jayce", "Ryhan", "Taylor"]
let chosen2 = names2.randomElement()?.uppercased() ?? "B"
print(chosen2)

var book2: Book? = nil
let author2 = book2?.author?.first?.uppercased()

let shoppingList = ["eggs", "tomatoes", "grapes"]
let firstItem = shoppingList.first?.appending(" are on my shopping list")
print(firstItem ?? "There is nothing in my shopping list")

let captains: [String]? = ["Archer", "Lorca", "Sisko"] // dictionary alway return a optional
let lengthOfBestCaptain = captains?.last?.count // captain -> optional, .last -> optional,
print(lengthOfBestCaptain ?? 0)

enum UserError: Error {
    case badID, networkFailed
}

func getID (id: Int) throws -> String {
    throw UserError.networkFailed
}

let user = (try? getID(id: 23)) ?? "Anonymous"
print(user)


