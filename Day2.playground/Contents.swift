import UIKit

// Booleans

var fileName = "pakistan.jpg"
print(fileName.hasSuffix(".jpg"))

let goodDogs = true
let gameOver = false

var isAuthenticated = false
print(isAuthenticated)
isAuthenticated = !isAuthenticated
print(isAuthenticated)
isAuthenticated.toggle() // toggle does the same thing as !
print(isAuthenticated)

// String Interpolation and Concatenation
let number = 11
let message = "Apollo " + String(number) + " has landed on the moon."
print(message)
let name = "Taylor"
let age = 26
let greeting = "My name is \(name) and I am \(age) years old."
print(greeting)

// Checkpoint 1

let tempInCelcius = 36.5
let tempInFarhenheit = (tempInCelcius * 9) / 5 + 32
print("Temp in Celsius : \(tempInCelcius)")
print("Temp in Farhenheit : \(tempInFarhenheit)")
