import UIKit
/*:
 ## Exercise - Guard Statements

 Imagine you want to write a function to calculate the area of a rectangle. However, if you pass a negative number into the function, you don't want it to calculate a negative area. Create a function called `calculateArea` that takes two `Double` parameters, `x` and `y`, and returns an optional `Double`. Write a guard statement at the beginning of the function that verifies each of the parameters is greater than zero and returns `nil` if not. When the guard has succeeded, calculate the area by multiplying `x` and `y` together, then return the area. Call the function once with positive numbers and once with at least one negative number.
*/

func calculateArea(x: Double, y: Double) -> Double? {
    guard x > 0, y > 0 else {
        return nil
    }
    return x * y
}

let positiveArea = calculateArea(x: 5, y: 10)
print(positiveArea ?? "Invalid input")

let negativeArea = calculateArea(x: -3, y: 10)
print(negativeArea ?? "Invalid input")

/*:
 Create a function called `add` that takes two optional integers as parameters and returns an optional integer. You should use one `guard` statement to unwrap both optional parameters, returning `nil` in the `guard` body if one or both of the parameters doesn't have a value. If both parameters can successfully be unwrapped, return their sum. Call the function once with non-`nil` numbers and once with at least one parameter being `nil`.
 */
func add(_ a: Int?, _ b: Int?) -> Int? {
    guard let first = a, let second = b else {
        return nil
    }
    return first + second
}

let sum1 = add(3, 5)
print(sum1 ?? "One or both parameters are nil")

let sum2 = add(nil, 5)
print(sum2 ?? "One or both parameters are nil")


/*:
 When working with UIKit objects, you will occasionally need to unwrap optionals to handle user input. For example, the text fields initialized below have `text` properties that are of type `String?`. 
 
 Write a function below the given code called `createUser` that takes no parameters and returns an optional `User` object. Write a guard statement at the beginning of the function that unwraps the values of each text field's `text` property, and returns `nil` if not all values are successfully unwrapped. After the guard statement, use the unwrapped values to create and return and instance of `User`.
 */
struct User {
    var name: String
    var age: Int
}

func getUser() -> User? {
    return User(name: "Alice", age: 30)
}

if let user = getUser() {
    print("User's name is \(user.name) and age is \(user.age)")
} else {
    print("User data is unavailable")
}


/*:
 Call the function you made above and capture the return value. Unwrap the `User` with standard optional binding and print a statement using each of its properties. 
 */

let nameTextField: String? = "Bob"
let ageTextField: String? = "25"

func createUser() -> User? {
    guard let name = nameTextField, let ageString = ageTextField, let age = Int(ageString) else {
        return nil
    }
    return User(name: name, age: age)
}

if let newUser = createUser() {
    print("Created user: \(newUser.name), age: \(newUser.age)")
} else {
    print("Failed to create user")
}

//: page 1 of 2  |  [Next: App Exercise - Guard](@next)
