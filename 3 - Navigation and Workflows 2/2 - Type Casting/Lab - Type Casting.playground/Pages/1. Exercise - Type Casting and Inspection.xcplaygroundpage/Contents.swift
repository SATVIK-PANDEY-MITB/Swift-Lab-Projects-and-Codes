/*:
 ## Exercise - Type Casting and Inspection
 
 Create a collection of type [Any], including a few doubles, integers, strings, and booleans within the collection. Print the contents of the collection.
 */
let mixedCollection: [Any] = [42, 3.14, "hello", true, false, 99, 2.71, "Swift"]

print("Contents of the mixed collection:")
for item in mixedCollection {
    print(item)
}


/*:
 Loop through the collection. For each integer, print "The integer has a value of ", followed by the integer value. Repeat the steps for doubles, strings and booleans.
 */
for item in mixedCollection {
    if let intValue = item as? Int {
        print("The integer has a value of \(intValue)")
    } else if let doubleValue = item as? Double {
        print("The double has a value of \(doubleValue)")
    } else if let stringValue = item as? String {
        print("The string has a value of \"\(stringValue)\"")
    } else if let boolValue = item as? Bool {
        print("The boolean has a value of \(boolValue)")
    }
}

/*:
 Create a [String : Any] dictionary, where the values are a mixture of doubles, integers, strings, and booleans. Print the key/value pairs within the collection
 */
let mixedDictionary: [String: Any] = [
    "intVal": 10,
    "doubleVal": 5.5,
    "stringVal": "abc",
    "boolTrue": true,
    "boolFalse": false,
    "anotherInt": 7,
    "anotherString": "456"
]

print("Contents of the dictionary:")
for (key, value) in mixedDictionary {
    print("\(key): \(value)")
}

/*:
 Create a variable `total` of type `Double` set to 0. Then loop through the dictionary, and add the value of each integer and double to your variable's value. For each string value, add 1 to the total. For each boolean, add 2 to the total if the boolean is `true`, or subtract 3 if it's `false`. Print the value of `total`.
 */
var total: Double = 0

for value in mixedDictionary.values {
    if let intVal = value as? Int {
        total += Double(intVal)
    } else if let doubleVal = value as? Double {
        total += doubleVal
    } else if value is String {
        total += 1
    } else if let boolVal = value as? Bool {
        total += boolVal ? 2 : -3
    }
}

print("Total from dictionary logic: \(total)")

/*:
 Create a variable `total2` of type `Double` set to 0. Loop through the collection again, adding up all the integers and doubles. For each string that you come across during the loop, attempt to convert the string into a number, and add that value to the total. Ignore booleans. Print the total.
 */

var total2: Double = 0

for item in mixedCollection {
    if let intVal = item as? Int {
        total2 += Double(intVal)
    } else if let doubleVal = item as? Double {
        total2 += doubleVal
    } else if let stringVal = item as? String, let num = Double(stringVal) {
        total2 += num
    }
    // Ignore booleans
}

print("Total2 from collection logic: \(total2)")

//: page 1 of 2  |  [Next: App Exercise - Workout Types](@next)
