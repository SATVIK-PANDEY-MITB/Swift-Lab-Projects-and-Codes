/*:
 ## Exercise - Functions and Optionals
 
 If an app asks for a user's age, it may be because the app requires a user to be over a certain age to use some of the services it provides. Write a function called `checkAge` that takes one parameter of type `String`. The function should try to convert this parameter into an `Int` value and then check if the user is over 18 years old. If he/she is old enough, print "Welcome!", otherwise print "Sorry, but you aren't old enough to use our app." If the `String` parameter cannot be converted into an `Int` value, print "Sorry, something went wrong. Can you please re-enter your age?" Call the function and pass in `userInputAge` below as the single parameter. Then call the function and pass in a string that can be converted to an integer.
 */
// Version 2: returns Int?
func checkAge(_ ageString: String) -> Int? {
    if let age = Int(ageString) {
        if age > 18 {
            print("Welcome!")
            return age
        } else {
            print("Sorry, but you aren't old enough to use our app.")
            return nil
        }
    } else {
        print("Sorry, something went wrong. Can you please re-enter your age?")
        return nil
    }
}

if let returnedAge = checkAge("20") {
    print("Returned age: \(returnedAge)")
} else {
    print("No valid age returned.")
}





/*:
 Go back and update your function to return the age as an integer. Will your function always return a value? Make sure your return type accurately reflects this. Call the function and print the return value.
 */


let inputs = ["20", "15", "abc"]

for input in inputs {
    if let returnedAge = checkAge(input) {
        print("Returned age: \(returnedAge)")
    } else {
        print("No valid age returned.")
    }
}




/*:
 Imagine you are creating an app for making purchases. Write a function that will take the name of an item for purchase and will return the cost of that item. In the body of the function, check to see if the item is in stock by accessing it in the dictionary `stock`. If it is, return the price of the item by accessing it in the dictionary `prices`. If the item is out of stock, return `nil`. Call the function and pass in a `String` that exists in the dictionaries below. Print the return value.
 */
let stock = [
    "MacBook Pro": 3,
    "iPhone": 0,
    "iPad": 5
]

let prices = [
    "MacBook Pro": 2499,
    "iPhone": 999,
    "iPad": 799
]

func getPrice(for item: String) -> Int? {
    if let quantity = stock[item], quantity > 0 {
        return prices[item]
    } else {
        return nil
    }
}

if let price = getPrice(for: "MacBook Pro") {
    print("Price: $\(price)")
} else {
    print("Item is out of stock or not found.")
}

if let price = getPrice(for: "iPhone") {
    print("Price: $\(price)")
} else {
    print("Item is out of stock or not found.")
}




//: [Previous](@previous)  |  page 3 of 6  |  [Next: App Exercise - Food Functions](@next)
