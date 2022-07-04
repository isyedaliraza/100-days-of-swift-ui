import UIKit

// MARK: - For Loops and Ranges

let names = ["Paul", "Gorge", "John", "Ringo"]

for name in names {
    print(name)
}

print(names[1...])
print(names[1...2])
print(names[0..<3])

for i in 1...12 {
    for j in 1...10 {
        print("\(i) x \(j) is \(i * j)")
    }
}

print("Haters gonna")
for _ in 1...5 {
    print("hate")
}

let employee = [
    "name": "Taylor Swift",
    "age": "28",
    "profession": "Singer"
]

for i in employee {
    print("\(i.key): \(i.value)")
}

let cities = Set([
    "Paris",
    "Tokyo",
    "Berlin",
    "New York",
    "Tokyo"
])

for city in cities {
    print(city)
}

// MARK: - While Loops

var countdown = 10

while countdown > 0 {
    print("Tick tock...")
    countdown -= 1
}

print("Blast off!")

// MARK: - Continue and Break

/*
 
 There are some cases when we want to stop the execution of the
 current loop. We can use break and continue to do that.
 Continue will skip the current iteration and complete the remaining
 iterations. Break will skip the all following iterations and exit
 the loop.
 
 */

let fileNames = ["paul.jpg", "untitled.txt", "sophie.jpg"]

for fileName in fileNames {
    if fileName.hasSuffix(".jpg") == false {
        continue
    }
    print("Picture found: \(fileName)")
}

let number1 = 7
let number2 = 9
var multiples = [Int]()

for i in 1...100_000 {
    if i.isMultiple(of: number1) && i.isMultiple(of: number2) {
        multiples.append(i)
        
        if (multiples.count == 10) {
            break
        }
    }
}

print(multiples)

// MARK: - Checkpoint 3

for i in 1...100 {
    if i.isMultiple(of: 3) && i.isMultiple(of: 5) {
        print("FizzBuzz")
    } else if i.isMultiple(of: 3) {
        print("Fizz")
    } else if i.isMultiple(of: 5) {
        print("Buzz")
    } else {
        print(i)
    }
}
