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

//  RETURN MULTIPLE VALUES
// Array
func getUser1() -> [String] {
    ["Jayce", "Ho"]
}

let user1 = getUser1()
print(user1, user1[0], user1[1])

//dictionary
func getUser2() -> [String : Any] {
    ["firstname": "jayce",
      "lastname": "ho"]
}
let user2 = getUser2()
print("user's firstname: \(user2["firstname", default: "nknowned"])")
print("user's age: \(user2["age", default: "unknowned"])")

//tuple
func getUser3() -> (firstname: String, lastname: String, age: Int){
    (firstname: "jayce",
     lastname: "ho",
     age:21)
    
}

let user3 = getUser3()
let firstname = user3.firstname
let lastname = user3.lastname
print("3rd user's first name: \(firstname)")
print("3rd user's last name: \(lastname)")
print("3rd user's full name: \(firstname) \(lastname)")

let (firstName, lastName, age) = getUser3()
print("Name: \(firstName) \(lastName)")

let (ten, _, _) = getUser3()
print("first name: \(ten)")
