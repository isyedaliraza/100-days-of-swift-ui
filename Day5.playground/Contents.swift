import UIKit

// MARK: - Conditionals (if, else if, else)

let age = 18
let parentalConsent = false

if age >= 18 || parentalConsent {
    print("You can buy the game!")
} else {
    print("Sorry you need a parental consent!")
}

enum WeatherCondition {
    case cool, normal, hot, hell
}

let weather = WeatherCondition.normal

if weather == .cool {
    print("It's cold")
} else if weather == .normal {
    print("It's a pleasant day")
} else if weather == .hot {
    print("It's hot")
} else {
    print("It's hot as hell")
}

let isLoggedIn = true
let isAuthorized = false

if isLoggedIn && isAuthorized {
    print("show profile")
} else {
    print("please log in ")
}

// MARK: - Switch

enum Directions {
    case north,
    south,
    east,
    west
}

let whereToGo = Directions.south
switch whereToGo {
case .north:
    print("We're heading towards north")
case .south:
    print("We're heading towards south")
case .east:
    print("We're heading towards east")
case .west:
    print("We're heading towards west")
}

/* Important Points:
 
 - In swift the switch statements are exhaustive. It means that
 a switch must check for all possible values. Otherwise swift
 will shout at us.
 
 - In swift if a case matches then it will run only that case's code.
 It will not run the subsequent cases.
 
 - If we want to run a subsequent case's code we can use
 fallthrough keyword
 
 - We can use default case to check for all other cases
 
 - Swift checks the cases in order. So the default must be at the end.
 Otherwise swift will complaint.
 
 */

let city = "London"
switch city {
case "New York":
    print("You're in America")
case "Paris":
    print("You're in France")
case "London":
    print("You're in the UK")
    fallthrough
case "Manchestar":
    print("You're in the UK")
    fallthrough
case "Bristol":
    print("You're in the UK")
    fallthrough
default:
    print("Where are you?")
}

// MARK: - Ternary Conditional Operator

let score = 18
print(score > 15 ? "You rocked" : "You need to improve")

/*
 
 - 2 + 3 here + is a binary operator because it operates on
 two inputs
 
 - *,/,+,- etc. are all binary operators
 
 - ?: is a ternary operator because it has three inputs e.g.
 someCondition ? a : b
 
 */
