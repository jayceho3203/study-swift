import SwiftUI

var greeting = "Hello, playground"

//CHECK POINT 8

protocol Building {
    var rooms: Int {get}
    var cost: Int {get set}
    var agentName: String {get set}
    func printSaleSummary ()
}
extension Building {
    func printSaleSummary (){
        print("Total room: \(rooms) rooms")
        print("Price: $\(cost) for a room")
        print("Estate agent responsible for selling the building: \(agentName)")
    }
}

struct House: Building {
    let rooms: Int
    var cost: Int
    var agentName: String
}

struct Office: Building {
    let rooms: Int
    var cost: Int
    var agentName: String
}
let myVilla = House(rooms: 200, cost: 50000, agentName: "Jayce Holding")
myVilla.printSaleSummary()
