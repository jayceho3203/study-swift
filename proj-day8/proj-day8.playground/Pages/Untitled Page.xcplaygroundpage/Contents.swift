import UIKit

enum PasswordError: Error {
    case short
    case obvious
}

func checkPassword (_ password: String) throws -> String {
    if password.count < 6 {
        throw PasswordError.short
    }
    
    if password == "123456" {
        throw PasswordError.obvious
    }
    
    if password.count < 8{
        return "OK"
    }
    else if password.count < 12 {
        return "Good"
    }
    else {
        return "Perfect!"
    }
}

func performPasswordChecking (_ password: String) {
    do {
        let result = try checkPassword(password)
        print("password rating: \(result)")
    } catch PasswordError.short {
        print("please enter new longer password")
    } catch PasswordError.obvious {
        print("your password is so ez")
    } catch {
        print("there was an error: \(error.localizedDescription)")
    }
}

let pass1 = "12345"
let pass2 = "123456"
let pass3 = "12345678"

performPasswordChecking(pass1)
performPasswordChecking(pass2)
performPasswordChecking(pass3)
