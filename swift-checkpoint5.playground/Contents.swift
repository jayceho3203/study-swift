import UIKit

var greeting = "Hello, playground"

var luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]

let formmatedNumbers = luckyNumbers
    .filter{!$0.isMultiple(of: 2)}
    .sorted{$0 < $1}
    .map{"\($0) is a lucky number"}
formmatedNumbers.forEach{
    print($0)
}




