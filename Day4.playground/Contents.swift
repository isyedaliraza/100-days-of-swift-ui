import UIKit

// MARK: - Type Annotations

// Swift can infer types based on the data that we assign to
// the variable. But sometimes we need to be explicit.
// We can explicitly define a variables type as below

var username: String = "hatersgonnahate"
var password: String
password = "fakersgonnafake"

// or we can define a constant then we can later give it a value before using it

let userId: String
// do some work
userId = "4eeE232X8cnDc4W2w4KKJ32JjDsch3"
// do some more work
print(userId)

// Here are some data types that we can annotate
let name: String = "Buffalo"
let wholeNumber: Int = 32
let decimalNumber: Double = 145.32
let isAuthenticated: Bool = false
let numbers: [Int] = [1, 2, 3, 4]
let person: [String:String] = [
    "name": "Ali",
    "nationality": "Pakistan"
]
let actors: Set<String> = Set([
    "Samuel L Jackson",
    "Tom Cruise",
    "Will Smith"
])

enum Directions {
    case north, south, east, west
}

var path: Directions
path = .east
path = .west
print(path)

// MARK: - Checkpoint 2

let tvShows = [
    "Cobra Kai",
    "The 100",
    "Game of Thrones",
    "Money Heist",
    "Walking Dead",
    "Breaking Bad",
    "Game of Thrones",
    "The 100"
]

print("Number of Shows: \(tvShows.count)")

let uniqueShows = Set(tvShows)
print("Number of unique shows: \(uniqueShows.count)")
