import UIKit

var greeting = "Hello, welcome to my DICTIONARIES"

let employee1 : [String : Any] = [
    "name": "Ronaldo",
    "job": "comedian",
    "age": 39,
]

print(employee1["name", default: "not found"])
print(employee1["birthday", default: "not found"])

let hasGraduated = [
    "Dat": false,
    "Jayce": true,
    "Nguyen": false,
    "Ryhan": false
]
let olympic = [
    2016 : "Vietnam",
    2020 : "Japan",
    2024 : "France"
]

print(olympic[2019, default: "unknown"])

var heights = [String : Int]()
heights["Jayce"] = 170
heights["Nguyen"] = 162
heights["Jayce"] = 172
print(heights)

