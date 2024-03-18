import UIKit

var greeting = """
Checkpoint 2:
This time the challenge is to create an array of strings,
then write some code that prints the number of items in the array
and also the number of unique items in the array.
"""
print(greeting)

let friendsList : [String] = ["Phat", "Mao", "Tin", "My", "Dat", "Dat"]
let numberOfFriends = friendsList.count

let friendSet = Set(friendsList)
print(friendSet)

let array = [1, 2, 3, 3, 4, 5, 5, 6, 6]

// Number of items in the array
let numberOfItems = array.count
print("Number of items in the array: \(numberOfItems)")

// Number of unique items in the array
let uniqueItems = Set(array)
let numberOfUniqueItems = uniqueItems.count
print("Number of unique items in the array: \(numberOfUniqueItems)")
