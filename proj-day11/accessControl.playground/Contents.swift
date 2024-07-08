import UIKit

var greeting = "Hello, playground"

struct BankAccount {
    private(set) var funds = 0
    
    mutating func deposit(amount: Int) {
        funds += amount
    }
    
    mutating func withdraw (amount: Int) -> Bool{
        if funds >= amount {
            funds -= amount
            return true
        } else {
            return false
        }
        
    }
}
var account = BankAccount()
account.deposit(amount: 1000)
print(account.funds)
// account.funds += 2000 -> error

var success = account.withdraw(amount: 1500)
if success {
    print("Withdrew money successfully")
} else {
    print("Not enough money ")
}
struct Contributor {
    private var name = "Anonymous"
}
let paul = Contributor()

struct Doctor {
    var name: String
    var location: String
    private var currentPatient = "No one"
}
let drJones = Doctor(name: "Esther Jones", location: "Bristol")
