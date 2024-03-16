import UIKit

var greeting = "Hello, ENUM"

enum weekday {
    case monday
    case tuesday
    case wednesday
    case sunday
}

var day = weekday.monday
day = weekday.tuesday
day = weekday.sunday

enum yearmonth {
    case jan, feb, mar, apr, dec
}

var month = yearmonth.jan // Swift will know month is a kind of enum yearmonth
month = .apr // Swift knows that .apr must refer to yearmonth.apr
month = .dec
