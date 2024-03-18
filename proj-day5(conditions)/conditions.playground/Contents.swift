import UIKit

var greeting = "Hello, playground"
// 1. if condition
let score = 88

if score > 80 {
    print("you passed the exam with \(score) point")
    
}

let percentage = 50
if percentage >= 50 {
    print("now you can skip the lesson!")
}

let age = 16

if age < 18 {
    print("you are ineligible!")
}
let myName = "Jayce"
let herName = "Ryhan"

if myName < herName {
    print("\(myName) --> \(herName) ")
}

if myName > herName {
    print("\(herName) --> \(myName)")
}

var numbers = [2, 3, 4]
numbers.append(1)

if numbers.count >= 3 {
    numbers.remove(at: 2)
}
 print(numbers)

let country = "America"
if country == "Vietnam" {
    print("Xin chao!")
}

let name = "Taylor"
if name != "" {
    print("welcome \(name)")
}

var username = ""
if username.count == 0 {
    print("welcome @nonymous")
}

if username.isEmpty {
    print("username is empty: \(username.isEmpty)")
}

enum Size: Comparable {
    case small
    case medium
    case large
}
print(Size.small > Size.large)
