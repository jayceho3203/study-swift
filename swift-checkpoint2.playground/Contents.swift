import UIKit

var greeting = """
Checkpoint 2:
This time the challenge is to create an array of strings,
then write some code that prints the number of items in the array
and also the number of unique items in the array.
"""
print(greeting)

let friendsList : [String] = ["Phat", "Mao", "Mao", "Tin", "My", "Dat", "Dat"]
let numberOfFriends = friendsList.count

let friendSet = Set(friendsList)
print(friendSet)

