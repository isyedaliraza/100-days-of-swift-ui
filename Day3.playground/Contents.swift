import UIKit

// MARK: - Arrays

// We can create an array by putting values inside [] brackets and
// assigning it to a variable. An array can be of any type but it can't
// contain mixed types. We can access array elements by index which starts
// from 0 to (count - 1). We can't access array element at index greater
// than count it will give error.

let characters = ["Josephine", "Clark", "Belamy", "Octavia"]
let scores = [100, 95, 88, 99, 76, 78, 91]
let temperatures = [32.5, 33.5, 21.0, 16, 7, 40, 45]
print(characters[0])
print(scores[2])
print(temperatures[1])

// We can also create empty arrays with Array<Type>() constructor. Here Type
// can be any data type e.g. Int, String, Double, Bool.
// We can use append to add elements to the array

var animals = Array<String>()
animals.append("Cat")
animals.append("Dog")
animals.append("Rabbit")
animals.append("Cow")

// There is a shorthand for specifying the type of array.
// Instead of Array<Type> we can use [Type] to indicate this is an array
var cities = [String]()

// If we want to mix types in array we need to create array of Any

var mixedArray = [Any]()
mixedArray.append("Ali")
mixedArray.append(28)
mixedArray.append(false)
print(mixedArray)

// Arrays have methods that we can use to do operations on them

let beatles = ["Gorge", "Paul", "Ringo", "John"]
print(beatles)
print(beatles.count)
print(beatles.sorted())
print(beatles.reversed())
mixedArray.remove(at: 2)
mixedArray.removeAll()

// MARK: - Dictionaries

let employee = [
    "name": "Taylor",
    "age": "28"
]

// We can access a dictionary index by its key but it will return Optional(value)
// We can also give default value
print(employee["name", default: "Unknown"])
print(employee["age", default: "Unknown"])
print(employee["location", default: "Unknown"])

var temperatureOfCities = [
    "London": 7.5,
    "Muscat": 45.9,
    "Paris": 23
]

print(temperatureOfCities.count)
temperatureOfCities.removeAll()
print(temperatureOfCities)

// We can define dictonary type like [KeyType:ValueType] or Dictionary<KeyType,ValueType>
var emptyDict = Dictionary<String, Int>()
var user = [String:String]()
user["username"] = "jack"
user["password"] = "p@ss\\|/0rd"
print(user["password", default: "Unknown"])

// If we try to reassign a key it will overwrite the value
user["password"] = "password"
print(user["password", default: "Unknown"])

// MARK: - Sets

// Sets are like arrays but they don't maintain order and they don't
// allow duplicates.

let actors = Set([
    "Tom Cruise",
    "Jhonny Depp",
    "Samuel L Jackson",
    "Will Smith"
])

print(actors)

// We can define type of set as Set<Type>
var movies = Set<String>()
// Sets don't have append as there is no order. They have
// insert instead.
movies.insert("Dark Knight Rises")
movies.insert("Frozen")
movies.insert("The Pirates of the Carribean")

// Sets also have fast lookups than arrays
print(movies.contains("Frozen"))

// MARK: - Enums

enum Weekdays {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday
    case sunday
}

// we can also use case keyword once and separate values by commas like below
enum Directions {
    case north, south, east, west
}

var day = Weekdays.monday
day = Weekdays.tuesday
day = .saturday // If an variables type is already set to enum we can just use .value
print(day)
