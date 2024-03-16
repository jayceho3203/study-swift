import UIKit

var greeting = "Hello, TYPE ANNOTATIONS"

var name : String = "jayce"

var s = 0
print(type(of: s))

var score : Double = 0  // if dont annotate data type, Swift will infer score is an integer
                        //but sometime score is a decimal
// string holds text
let playername :  String = "Messi"

//int holds whole number
var luckyNumber : Int = 13

// double holds decimal number
var pi : Double = 3.141

// bool holds either true or false
var isHandsome : Bool = true

// array: [data type]
var albums : [String] = ["Reds", "Fearless"]
var friends = [String]()

// dictionary [key's datatype : value's data type]
var user : [String : String] = ["id": "@jayce.hodang"]
var employees = [String : String]()

// Set
var songs : Set<String> = Set(["Em cua ngay hom qua", "7711", "Nga nghieng"])

var myNumbers : Set<Int> = [1, 2, 3, 4, 5]

// a constants dont have a value for yet
let username : String
username = "@jayce"
print(username)











