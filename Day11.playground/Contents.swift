import Cocoa


// MARK: - Access Control

struct BankAccount {
    private(set) var funds: Int = 0
    
    mutating func deposit(_ amount: Int) {
        funds += amount
    }
    
    mutating func withdraw(_ amount: Int) -> Bool {
        if amount <= funds {
            funds -= amount
            return true
        }
        
        return false
    }
}

var account = BankAccount()
account.deposit(100)

let result = account.withdraw(200)

if result {
    print("Here is your money")
} else {
    print("You don't have sufficient funds")
}

print(account.funds)

// account.funds -= 1000
// =======================================================================
// The above commented code works if the funds is a public
// property and there is no access control. To make it right
// we can introduce the following access controls:
// 1. private -> Can't read/write outside the struct
// 2. fileprivate -> Can't read/write outside the file
// 3. public -> Can read/write anywhere
// 4. private(set) -> Can't write outside the struct but can read anywhere
// =======================================================================


// MARK: - Static properties and methods

struct School {
    static var studentsCount = 0
    
    static func add(name: String) {
        print("\(name) has joined the school")
        studentsCount += 1
    }
}

School.add(name: "John Wick")
print("Total Students: \(School.studentsCount)")

// ==========================================================================================
// Rules for static and non-static properties and methods
// static properties and methods can't access non-static properties and methods [Not Allowed]
// non-static properties and methods can access static properties and methods [Allowed]
// ==========================================================================================


struct AppData {
    static let version = "1.2.3-beta-1"
}

print(AppData.version)

struct Employee {
    let name: String
    var age: Int
    
    static let example = Employee(name: "John Wick", age: 35)
}

print(Employee.example)

// MARK: - Checkpoint 6

struct Car {
    let model: String
    let numberOfSeats: Int
    private(set) var gear: Int = 0
    
    mutating func changeGear(to gear: Int) {
        if (0...10).contains(gear) {
            self.gear = gear
        } else {
            print("You want to break the gear??")
        }
    }
}

var dodge = Car(model: "Dodge", numberOfSeats: 4)
print(dodge.gear)
dodge.changeGear(to: 3)
print(dodge.gear)
dodge.changeGear(to: 100)
