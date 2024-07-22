import UIKit

var greeting = "Hello, THIS IS CHECKPOINT 9 "

func getNumber (input: [Int]?) -> Int {
    input?.randomElement() ?? Int.random(in: 1...100)
    
}

getNumber(input: [])
