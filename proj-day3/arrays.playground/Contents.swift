import UIKit

var beatles = ["Dat", "Nguyen", "Ryhan", "Jayce"]

beatles.append("Huy Huynh")
print(beatles[0])
print(beatles[1])
print(beatles[2])
print(beatles[3])
beatles.remove(at: 0)
print(beatles)

var numbers = [1 , 2, 99, 50.5]

print(numbers[0])

var sortedNumbers = numbers.sorted()
print(sortedNumbers)

var reverseSortedNumber = numbers.sorted(by: >)
print(reverseSortedNumber)

numbers.append(99)
numbers.append(contentsOf: [100, 200, 300.99])

var friends = Array<String>()
friends.append("Mao")
friends.append("Phat")
friends.append("Tin")
print(friends[1])

var daysOfWeek = [String]()
daysOfWeek.append("Monday")
daysOfWeek.append("Saturday")
print(daysOfWeek.contains("Sunday"))

var temparature = [20.5, 30, 30.5, 40, 32]
temparature.removeAll()
/*
 1. only 1 datatype
 * [1, 2.5] --> [1.0, 2.5]
 
 2. add 1 item
 arrayName.append(newElement)
 
    numbers.append(2508)
    numbers.append(3203)
    numbers.append(2508)
 3. add >1 elements
 3.1 arrayName.append(contentsOf: [value1, value2,...])
    numbers.append(contentsOf: [5, 6, 7])
 3.2 arrayName.append(contentsOf: additionalArray)
    additionalNumbers = [5, 6, 7]
    numbers.append(contentsOf: additionalNumbers)
 3.3 arrayName += additionalArray
    numbers += additionalumbers
 4. arrayName.count() --> how many items are in the arrayNames
 
 5. arrayName.remove(at: index) --> remove item arrayName[index]
 6. arrayName.removeAll() --> remove all items --> arrayName = []
 7.check whether an array contains a particular item by using contains()
    daysOfWeek.contains("Sunday") --> true or false
 
 */
