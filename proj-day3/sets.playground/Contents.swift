import UIKit

var greeting = "Hello, SETS"

var players = Set<String>()
players.insert("ronaldo")
players.insert("messi")
players.insert("neymar")
print(players)

print(players.contains("messi"))

let mySet: Set<Int> = [1, 2, 3, 4, 5]

let elementToSearch = 3
if mySet.contains(where: { $0 == elementToSearch }) {
    print("\(elementToSearch) is found in the set.")
} else {
    print("\(elementToSearch) is not found in the set.")
}

var numbers = Set([1, 2, 1, 2, 3]) // true but the second elements (1, 2) will be deleted
print(numbers)

