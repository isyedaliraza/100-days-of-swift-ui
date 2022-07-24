import UIKit

// In the func below we set the default value for the
// parameter end. We can give the default value for any
// parameter by putting equals sign and then value after it.

func printTimesTable(for num: Int, end: Int = 10) {
    for i in 1...end {
        print("\(num) * \(i) = \(num * i)")
    }
}

printTimesTable(for: 10)
printTimesTable(for: 2, end: 12)

// We can define throwing function by adding throws keyword
// before return type annotation. There are three steps in
// defining throwing functions:
// - Define your error type
// - Write throwing function
// - Call it using do catch block

// Let's assume we have two throwing funcs named foo and bar.
// If we want to call a throwing func we must add try before it.
// We can call throwing funcs like below:

/*
    do {
        let result1 = try foo()
        let result2 = try bar()
        print(result1)
        print(result2)
    } catch {
        // here we also have access to error constant which
        // Swift has created for us automatically
        print("Error catched")
    }
 */

// We can also omit do catch block by using try! like below
// let result3 = try! foo()

enum PasswordError: Error {
    case short, obvious
}

func checkPassword(_ pwd: String) throws -> String {
    if pwd.count < 5 { throw PasswordError.short }
    
    if pwd == "123456" { throw PasswordError.obvious }
    
    if pwd.count < 8 {
        return "OK"
    } else if pwd.count < 10 {
        return "Good"
    } else {
        return "Excellent"
    }
}

let password = "123456"

do {
    let result = try checkPassword(password)
    print("Password rating: \(result)")
} catch PasswordError.short {
    print("The password is short")
}
catch {
    print("There is an error: \(error.localizedDescription)")
}

// Below we have omitted do-catch block by using try!
print(try! checkPassword("P@ssw0rd!123@1"))

// MARK: - Checkpoint # 4

enum SqrtError: Error {
    case outOfBounds, noRoot
}

func calculateSqrt(of num: Int) throws -> Int {
    if num < 1 || num > 10_000 { throw SqrtError.outOfBounds }
    
    for i in 1...100 {
        if i * i == num {
            return i
        }
    }
    
    throw SqrtError.noRoot
}

do {
    print("The sqrt of 9 is \(try calculateSqrt(of: 9))")
} catch SqrtError.noRoot {
    print("No root")
} catch SqrtError.outOfBounds {
    print("Out of bounds")
} catch {
    print("There is an error: \(error.localizedDescription)")
}
