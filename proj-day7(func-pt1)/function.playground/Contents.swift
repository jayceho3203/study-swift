import UIKit

var greeting = "Hello, playground"

func showGreeting(){
    print("Welcome to my Playground")
    print("This is the playground about FUNCTION")
    print("Thanks for you read")
    print("---------\n")
}

showGreeting()

showGreeting()

func modulo(divisor: Int, dividend: Int) -> Int {
    return divisor % dividend
}

modulo(divisor: 10, dividend: 3)
func checkMultiple(number: Int, of: Int){
    if number % of == 0 {
        print("\(number) is a multiple of \(of)")
    } else {
        print("\(number) isn't a multiple of \(of)")
        let mod = modulo(divisor: number, dividend: of)
        print(mod)
    }
}

checkMultiple(number: 50, of: 13)
checkMultiple(number: 777, of: 3)
checkMultiple(number: 10, of:3)

func pythagoras (a: Double, b: Double) -> Double {
    sqrt( a*a + b*b)
}

var root =  pythagoras(a: 3, b: 4)
print(root)
