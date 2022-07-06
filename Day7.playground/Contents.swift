import UIKit

// MARK: - Functions

/*
 
 We can declare a function like below:
 
 func nameOfFunction(...parameters) {
    // body of the function
    // code goes here
 }
 
 We can call the function like below:
 
 nameOfFunction(...arguments)
 
 Parameters = Placeholders
 Arguments = Actual Values passed
 This distinction doesn't matters but its good to know
 
 */

func printTimesTable(of: Int, to: Int) {
    for i in 1...to {
        print("\(of) * \(i) = \(of * i)")
    }
}

printTimesTable(of: 5, to: 20)

/*
 
 A function can return on or more values. The return type
 of the function is specified after -> like below:
 
 func nameOfFunction(...parameters) -> returnType {
    // body of the function goes here
 }
 
 if a function only has one statement which is returning some value
 then we can omit return keyword like below:
 
 func returnSomething() -> returnType {
    someValueOfTypeReturnType
 }
 
 */

func areStringsEqual(first: String, second: String) -> Bool {
    first.sorted() == second.sorted()
}

print(areStringsEqual(first: "abc", second: "ccab"))

func pythagoras(a: Double, b: Double) -> Double {
    sqrt(a * a + b * b)
}

print(pythagoras(a: 3, b: 4))

// MARK: - Returning multiple values from the function

/*
 
 - There might be some cases where we want to return more than
   one value from the function e.g. let's say we are requesting
   some data from a server and we wrote a function that can return
   either the data or error in case of any error.
 
 - To return multiple values from a function we have a couple of
   options. We can use an array, dictionary or a tuple to return
   multiple values from a function.
 
 */

// We can return multiple values from a function using an
// array as shown in the function below

func getUser1() -> [String] {
    ["Taylor", "Swift"]
}

let user1 = getUser1()
print("FirstName: \(user1[0]), LastName: \(user1[1])")

// The problem with the above approach is that we can
// easily forget the order of the return values e.g. we can
// forget which index has which value

// We can also use a dictionary to return multiple values
// from an array as shown in the function below

func getUser2() -> [String:String] {
    [
        "firstName": "Taylor",
        "lastName": "Swift"
    ]
}

let user2 = getUser2()
print("FirstName: \(user2["firstName", default: "?"]), LastName: \(user2["lastName", default: "?"])")

// This approach is fine but still we need to remember what data
// is returned and the keys of the dictionary

// Finally we can use Tuples to return multiple values from
// a func as shown below

func getUser3() -> (firstName: String, lastName: String) {
    (firstName: "Taylor", lastName: "Swift")
    // While returning we can omit the keys like below
    // ("Taylor", "Swift")
    
}

let user3 = getUser3()
print("FirstName: \(user3.firstName), LastName: \(user3.lastName)")

// By using tuples we can never forget what data a function returns
// swift takes care of remembering it

// We can make tuples without keys like below

func getUser4() -> (String, String) {
    ("Taylor", "Swift")
}

let user4 = getUser4()
print("FirstName: \(user4.0), LastName: \(user4.1)")

// We can also destructure a tuple like below
let (firstName, lastName) = getUser4()
print("FirstName: \(firstName), LastName: \(lastName)")

// MARK: -  External and internal parameter names

/*
 
 - Swift really loves to make the code as readable as possible
   and it does it by using internal and external parameter names
 
 - When defining a func we can use two parameter names separated
   by a space before colon and type like below:
   
 - func nameOfFunc(external internal: String) {
    // here in the body we use internal
   }
 
 */

// We can use an underscore to remove external parameter name
// like in the func below

func isUppercased(_ str: String) -> Bool {
    str == str.uppercased()
}

print(isUppercased("HELLO, WORLD!"))

// Or we can have different internal and external names
// to make our code more readable

func printTimesTable(for number: Int) {
    for i in 1...10 {
        print("\(number) x \(i) = \(number * i)")
    }
}

printTimesTable(for: 5)
