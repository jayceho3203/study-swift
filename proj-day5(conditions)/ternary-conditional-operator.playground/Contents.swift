import UIKit

var greeting = "Hello, playground"

// IN STEAD OF:
let hour = 12
if hour >= 12 {
    print("It's after noon")
} else {
    print("It's before noon")
}


// you can write
print(hour >= 12 ? "It's after noon" : "It's before noon")

let names = ["Jayce", "Nguyen", "Ut"]
let crewCount = names.isEmpty ? "No one" : "\(names.count) people"
print(crewCount)

enum Theme {
    case dark, light
}

let theme = Theme.dark

let background = theme == .dark ? "black" : "white"

print(background)

var singers = ["Taylor Swift"]
