import UIKit

var greeting = "Hello, playground"

let filenames = ["dat.txt", "jayce.jpg", "nguyen.jpg"]

for filename in filenames {
    if filename.hasSuffix("jpg") == false {
        continue
    }
    print("founded file: \(filename)")
}

let number1 = 2
let number2 = 14
var multiples = [Int]()

for i in 1...1000_000 {
    if i.isMultiple(of: number1) && i.isMultiple(of: number2){
        multiples.append(i)
        if multiples.count == 10 {
            break
        }
    }
}

print(multiples)
