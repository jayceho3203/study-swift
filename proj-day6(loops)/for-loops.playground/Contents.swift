import UIKit

var greeting = "Hello, playground"

let platforms = ["macOS", "tvOS", "iOS", "watchOS"]
for platform in platforms {
    print("Swift works great on \(platform)")
}

for i in 1...5 {
    print("now i = \(i)")
    for j in 1..<5 {
        print("i * j = \(i * j)")
    }
}

var lyric = "haters gonna"
for _ in 1...5{
    lyric += " hate"
    print(lyric)
}
print(lyric)

let champions = ["Poppy", "Yone", "Tris", "Gwen", "Vayne"]

print(champions[1...3])
print(champions[1..<3])
print(champions[1...])
print(champions[...3])
print(champions[...])

for i in [1,2,3]{
    print(i)
}
