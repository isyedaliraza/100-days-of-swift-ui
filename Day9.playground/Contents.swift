import Cocoa

// Copying functions like variables

func greetMe(name: String) {
    print("Hello, \(name)")
}

let greetMeCopy = greetMe

greetMeCopy("Ali")

// Anonymous funcs a.k.a closures

func generateNumbers(_ generator: () -> [Int]) -> [Int] {
    generator()
}

let randomNumbers = generateNumbers { () -> [Int] in
    let randomNumbers = [1, 2, 3, 4, 5]
    return randomNumbers
}

print(randomNumbers)

func doSomething(_ title: String, task1: () -> Void, task2: () -> ()) -> Void {
    print("Begin \(title)")
    task1()
    task2()
}

doSomething("Saving the world!") {
    print("I'm task 1")
} task2: {
    print("I'm task 2")
}


// Checkpoint 5

let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]

let result = luckyNumbers.filter { !$0.isMultiple(of: 2) }.sorted().map { "\($0) is a lucky number" }

for number in result {
    print(number)
}
