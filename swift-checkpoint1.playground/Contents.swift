import UIKit
// 1. create constant holding any temparature in Celsius
let C_degrees = 25.0
// 2. convert to Fahrenheit = * 9 / 5 + 32
let F_degrees = C_degrees * 9 / 5 + 32
// string interpolation
var message = "\(C_degrees) °C = \(F_degrees) °F"
//3. print message
print(message)
