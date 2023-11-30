/*:
## Exercise - Type Casting and Inspection

 Create a collection of type [Any], including a few doubles, integers, strings, and booleans within the collection. Print the contents of the collection.
 */
let myCollection: [Any] = [3.14, "Hello",  7.5, "Swift", false]

//:  Loop through the collection. For each integer, print "The integer has a value of ", followed by the integer value. Repeat the steps for doubles, strings and booleans.


for item in myCollection {
    if let thing = item as? Int {
        print("The integer has a value of \(thing)")
    } else if let thing1 = item as? Double {
        print("The double has a value of \(thing1)")
    } else if let thing2 = item as? String {
        print("The string says: \(thing2)")
    } else if let thing3 = item as? Bool {
        print("The boolean is \(thing3)")
    }
}
//:  Create a [String : Any] dictionary, where the values are a mixture of doubles, integers, strings, and booleans. Print the key/value pairs within the collection
let myDictionary: [String: Any] = [
    "number": 42,
    "pi": 3.14159,
    "message": "Hello, World!",
    "isTrue": true,
    "decimal": 10.5
]

print(myDictionary)
//:  Create a variable `total` of type `Double` set to 0. Then loop through the dictionary, and add the value of each integer and double to your variable's value. For each string value, add 1 to the total. For each boolean, add 2 to the total if the boolean is `true`, or subtract 3 if it's `false`. Print the value of `total`.
 
var total: Double = 0.0

for (_, value) in myDictionary {
    if let intValue = value as? Int {
        total += Double(intValue)
    } else if let doubleValue = value as? Double {
        total += doubleValue
    } else if let stringValue = value as? String {
        total += 1
    } else if let boolValue = value as? Bool {
        if boolValue {
            total += 2
        } else {
            total -= 3
        }
    }
}

print("Total: \(total)")

//:  Create a variable `total2` of type `Double` set to 0. Loop through the collection again, adding up all the integers and doubles. For each string that you come across during the loop, attempt to convert the string into a number, and add that value to the total. Ignore booleans. Print the total.




/*:
page 1 of 2  |  [Next: App Exercise - Workout Types](@next)
 */
