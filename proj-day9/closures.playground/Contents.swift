import UIKit

var greeting = "Hello, playground"

func sayHello() {
    print("Hi, there!")
}

sayHello()

let team = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]
//CLOSURE
let captainFirstTeam = team.sorted (by:{(a: String , b: String) ->Bool in
    if a == "Suzanne" {
        return true
    } else if b == "Suzanne"{
        return false
    }
    return a < b
} )
//TRAILING CLOSURE SYNTAX
let trailingCaptainFirstTeam = team.sorted {a , b  in
    if a == "Suzanne" {
        return true
    } else if b == "Suzanne"{
        return false
    }
    return a < b
}
print(trailingCaptainFirstTeam)

//SHORTHAND CLOSURE SYNTAX
let shortHandCaptainFirst = team.sorted{
    if $0 ==  "Suzanne"{
        return true
    } else if $1 == "Suzanne"{
        return false
    }
    return $0 < $1
}
print(shortHandCaptainFirst)

let reverseTeam = team.sorted { $0 > $1}
print(reverseTeam)

let tOnly = team.filter{$0.hasPrefix("T")}
print(tOnly)

func makeRandomArray(_ size: Int, using generator:() -> Int) -> [Int]{
    var numbers = [Int]()
    for _ in 1...size {
        let newNumber = generator()
        numbers.append(newNumber)
    }
    return numbers
}

func Dialer() -> Int {
    let roll = Int.random(in: 1...52)
    return roll
}

var randomArray = makeRandomArray(20, using: Dialer)
print(randomArray)

func doImportantWork(first: () -> Void, second: () -> Void, third: () -> Void) {
    print("About to start first work")
    first()
    print("About to start second work")
    second()
    print("About to start third work")
    third()
    print("Done!")
}

doImportantWork {
    print("This is the first work")
} second: {
    print("This is the second work")
} third: {
    print("This is the third work")
}
func assembleToy(instruction: () -> Void) {
    instruction()
    print("It's done!")
}
assembleToy {
    print("Grok the glib")
    print("Flop the flip")
    print("Click the clack")
}
