import UIKit

var greeting = "Hello, playground"
enum DataError : Error {
    case outOfBounds
    case noRoot
}
func findSquareRoot(of number: Int) throws -> Int{
    if number < 1 || number > 10000 {
        throw DataError.outOfBounds
    }
    else if number >= 1 && number <= 10000{
        for i in 1...100 {
            if i*i == number {
                return i
            }
    
        }
    }
    throw DataError.noRoot
}

func performFindSqrt(of number : Int){
    do {
        let result = try findSquareRoot(of: number)
        print("Square Root of \(number) is \(result)")
    }
    catch DataError.outOfBounds {
        print("please enter a number that > 1 and < 10.000")
    }
    catch DataError.noRoot {
        print("\(number) doesn't have a integer square root")
    }
    catch {
        print("There was an error: \(error.localizedDescription)")
    }
}

performFindSqrt(of: 25)
performFindSqrt(of: 901)
performFindSqrt(of: 52)
performFindSqrt(of: 10001)
