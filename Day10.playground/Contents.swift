import Cocoa

// MARK: - Structs


struct BankAccount {
    var balance: Double
    var title: String
    
    func printSummary() {
        print("Account: \(title)")
        print("Balance: $\(balance)\n")
    }
    
    mutating func add(_ amount: Double) {
        balance += amount
    }
    
    mutating func deposit(amount: Double) {
        add(amount)
    }
    
    mutating func withdraw(amount: Double) {
        add(-amount)
    }
}


// Constant instances can't be mutated or changed.
let blockedAccount = BankAccount(balance: 10000, title: "John Doe (Blocked)")
blockedAccount.printSummary()

var currentAccount = BankAccount(balance: 0, title: "John Doe (Current)")
currentAccount.printSummary()
currentAccount.deposit(amount: 300.0)
currentAccount.withdraw(amount: 100.0)
currentAccount.printSummary()


// MARK: - Computed Properties

struct Employee {
    let name: String
    var vacationsAllocated = 14
    var vacationsTaken = 0
    
    // Computed properties can't be constants
    // Computed properties must have explicit type declaration
    var vacationsRemaining: Int {
        get {
            vacationsAllocated - vacationsTaken
        }
        
        set {
            vacationsAllocated = vacationsTaken + newValue
        }
    }
}

var archer = Employee(name: "Sterling Archer", vacationsAllocated: 14)
archer.vacationsTaken += 4
print(archer.vacationsRemaining)
archer.vacationsRemaining = 3
print(archer.vacationsAllocated)

// MARK: - Property Observers

struct App {
    var contacts: [String] = [] {
        willSet {
            print("Current value is: \(contacts)")
            print("New value will be: \(newValue)")
        }
        
        didSet {
            print("There are now \(contacts.count) contacts.")
            print("Old value was: \(oldValue)")
        }
    }
}


var app = App()
app.contacts.append("John D")
app.contacts.append("Kelly J")


// MARK: - Custom Initializer

struct Player {
    var name: String
    var number: Int
    
    // If we provide an init the default init will be blocked by Swift
    // Can call functions after initializing the properties
    // Must assign all properties
    
    init(name: String, number: Int) {
        self.name = name
        self.number = number
    }
    
    init(_ name: String) {
        self.name = name
        number = Int.random(in: 1...99)
    }
}

let peppa = Player(name: "Peppa Pig", number: 11)
print(peppa.name)
print(peppa.number)

let mike = Player("Mikey")
print(mike.name)
print(mike.number)
