import Cocoa

// MARK: - Classes vs Structs

/*
 Structs and classes differ in the following:
 
 1. Classes can inherit stuff from other classes but structs can't inherit from other structs.
    - class Developer: Employee {} is valid
    - struct Developer: Employee {} is invalid
 
 2. If an instance of a class is copied the underlying data is shared.
    - var emp1 = Employee(name: "John")
    - var emp2 = emp1
    - emp2.name = "Doe"
    - now both emp1 and emp2 name is "Doe"
 
 3. Classes don't have memberwise initializer. We need to make sure we initialize all the
    properties by ourself.
 
 4. Classes have a deinitializer. Which is a special function that is called to clean up
    resourses.
 
 5. Constant instances of classes allow changing their variable data.
 
 */

class Person {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

let p1 = Person(name: "John")
let p2 = p1
print(p1.name) // Output: John
p2.name = "Doe" // Changed for both p1 and p2
print(p1.name) // Output: Doe

// MARK: - Inheritance

class Employee {
    var hours: Int
    
    init(hours: Int) {
        self.hours = hours
    }
    
    func printSummary() {
        print("I work \(hours) hours a day.")
    }
}

final class Developer: Employee {
    func work() {
        print("I write code for \(hours) hours a day.")
    }
    
    override func printSummary() {
        print("I work \(hours) hours a day. I am a developer.")
    }
}

final class Manager: Employee {
    func work() {
        print("I do nothing for \(hours) hours a day.")
    }
}

let johnny = Developer(hours: 8)
let bravo = Manager(hours: 10)
johnny.work()
bravo.work()

let tom = Developer(hours: 8)
let jerry = Manager(hours: 10)
tom.printSummary()
jerry.printSummary()
