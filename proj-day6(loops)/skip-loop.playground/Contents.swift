import UIKit

var greeting = "Hello, playground"

let filenames = ["dat.txt", "jayce.jpg", "nguyen.jpg"]

for filename in filenames {
    if filename.hasSuffix("jpg") == false {
        continue
    }
    print("founded file: \(filename)")
}

let number1 = 1
let number2 = 14
var multiples = [Int]()

for i in 1...1_000_000 {
    if i.isMultiple(of: number1) && i.isMultiple(of: number2){
        multiples.append(i)
    }
    
}
