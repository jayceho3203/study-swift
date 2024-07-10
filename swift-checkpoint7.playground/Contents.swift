import UIKit

var greeting = "Hello, playground"

class Animal{
    let legs: Int
    
    init(legs: Int){
        self.legs = legs
    }
}

class Dog: Animal {
    func speak(){
        print("Woof woof woof.....")
    }
}

class Corgi: Dog {
    override func speak() {
        print("Wong wong wong wong...")
    }
}
class Poodle: Dog{
    override func speak() {
        print("Bow Bow Bow Bow...")
    }
}
class Cat: Animal {
    let isTame: Bool
    init(legs: Int, isTame: Bool) {
        self.isTame = isTame
        super.init(legs: legs)
    }
    func speak() {
        print("Meowwwwww meowwwww meowwww.....")
    }
}

class Persian: Cat {
    override func speak() {
        print("Miauuu Miauuu Miauuuuu.....")
    }
}
class  Lion: Cat {
    override func speak() {
        print("Grrrrrrrrrrrr...........")
    }
}

var fa = Corgi(legs: 4)
fa.speak()
var simba = Lion(legs: 4, isTame: false)
simba.speak()
