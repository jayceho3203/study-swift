import UIKit

var greeting = "Hello, playground"

let place = "Hue"

switch place {
case "Ho Chi Minh City":
    print("You are Linda")
case "Hanoi":
    print("You are MCK")
case "Hue":
    print("You are Jayce Ho")
default:
    print("I dont know who you are")
}

let numberOfEx = 2

// use FALLTHROUGH

switch numberOfEx {
case 0:
    print("Are you LGTV ????")
    fallthrough
case 1:
    print("Is that a man ??")
    fallthrough
case 2:
    print("you are exactly a regular guy")
    fallthrough
case 10:
    print("What a fuck boy !!!")
    fallthrough
default:
    print("are you a human ????")
}
