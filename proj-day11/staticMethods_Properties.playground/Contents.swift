import UIKit

var greeting = "Hello, playground"
struct School {
    static var studentCount = 0
    
    static func add (student: String){
        print("student \(student) joined the school")
        studentCount += 1
    }
}

School.add(student: "Jayce Ho")
print(School.studentCount
)

struct AppData {
    static let version = "1.3 beta 2"
    static let saveFilename = "settings.json"
    static let homeURL = "https://www.hackingwithswift.com"
}

print(AppData.version)

struct Player {
    // Thuộc tính static để đếm số lượng thể hiện của struct Player
    static var playerCount = 0
    
    // Thuộc tính instance
    var name: String
    
    // Khởi tạo
    init(name: String) {
        self.name = name
        // Mỗi lần tạo một thể hiện mới, tăng playerCount lên 1
        Player.playerCount += 1
    }
    
    // Phương thức static để lấy số lượng người chơi
    static func getPlayerCount() -> Int {
        return playerCount
    }
    
    // Phương thức instance
    func getPlayerName() -> String {
        return name
    }
}

// Tạo một số thể hiện của Player
let player1 = Player(name: "Alice")
let player2 = Player(name: "Bob")
let player3 = Player(name: "Charlie")

// Truy cập thuộc tính và phương thức static
print("Số lượng người chơi: \(Player.getPlayerCount())") // Số lượng người chơi: 3

// Truy cập thuộc tính và phương thức instance
print("Tên người chơi 1: \(player1.getPlayerName())") // Tên người chơi 1: Alice
print("Tên người chơi 2: \(player2.getPlayerName())") // Tên người chơi 2: Bob
print("Tên người chơi 3: \(player3.getPlayerName())") // Tên người chơi 3: Charlie

