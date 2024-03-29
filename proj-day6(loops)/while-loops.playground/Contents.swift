import UIKit

var greeting = "Hello, playground"

var countdown = 10

while countdown > 0 {
    print("\(countdown)...")
    countdown -= 1
}

print("COUNTDOWN: FINISHED")

var roll = 0

while roll != 15 {
    roll = Int.random(in: 1...20)
    print("I rolled \(roll)")
}

print("BINGOOOOO")


