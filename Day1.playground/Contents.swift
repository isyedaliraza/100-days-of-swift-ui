import UIKit

// Variables
var greeting = "Hello, playground"
var movieToWatch = "Orange is the new Black"
print(movieToWatch)

// Constants
let pi = 3.145
// pi = 2.1 error: Cannot assign to value: 'pi' is a 'let' constant
print(pi)

// Print
print("Hello, World!")

// Strings
let name = "Ali Bokhari"
let bio = """
Ali is a software engineer
and a full stack app developer
and aspiring machine learning engineer
""" // multi-line string opening and closing delimeters must be on a new line

// Strings have some built-in functions
print(name.uppercased())
print(name.count)
print(bio.hasPrefix("Bio"))

// Numbers
let score = 10
let money = 10_000_000_000 // swift ignores underscores in numbers
let balance = 10___00__00000______0 // this is also valid
let highScore = score + 100
let lowScore = score - 100
let halfScore = score / 2
let doubleScore = score * 2
let squaredScore = score * score
var count = 5
count += 5
count -= 5
count *= 5
count /= 5
print(count)
// numbers also have built-in functions like strings
print(money.isMultiple(of: 3))
print(120.isMultiple(of: 3))

// Decimals
let myInt = 3
let myDouble = 1.0
// We can't do something like below due to type safety
// let total = myInt + myDouble
// But we can do type conversion
let total = Double(myInt) + myDouble
// or
let totalInt = myInt + Int(myDouble)
let theTotal = myDouble + 10 // here swift treats 10 as 10.0
print(theTotal)

// We can change types once inferred
let meaningOfLife = 42
// now we can't do something like below
// meaningOfLife = "fourty two"
