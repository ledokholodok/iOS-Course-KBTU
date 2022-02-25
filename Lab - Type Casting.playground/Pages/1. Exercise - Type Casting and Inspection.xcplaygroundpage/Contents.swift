/*:
 ## Exercise - Type Casting and Inspection
 
 Create a collection of type [Any], including a few doubles, integers, strings, and booleans within the collection. Print the contents of the collection.
 */

import Darwin
var collection: [Any] = [1.2, 2.3, 1, 2, "1", "2", true, false]
print(collection)
/*:
 Loop through the collection. For each integer, print "The integer has a value of ", followed by the integer value. Repeat the steps for doubles, strings and booleans.
 */
for value in collection {
    switch value {
        case let value as Int:
            print("The integer has a value of \(value)")
        case let value as Double:
            print("The double has a value of \(value)")
        case let value as String:
            print("The string has a value of \(value)")
        case let value as Bool:
            print("The boolean has a value of \(value)")
        default:
            print("There is no value")
    }
}

/*:
 Create a [String : Any] dictionary, where the values are a mixture of doubles, integers, strings, and booleans. Print the key/value pairs within the collection
 */
var dictionary: [String: Any] = ["A" : 1.5, "B": 2.2, "C": 1, "D": 2, "E": "e", "F": "f", "G": true, "H": false]
print(dictionary)
/*:
 Create a variable `total` of type `Double` set to 0. Then loop through the dictionary, and add the value of each integer and double to your variable's value. For each string value, add 1 to the total. For each boolean, add 2 to the total if the boolean is `true`, or subtract 3 if it's `false`. Print the value of `total`.
 */
var total: Double = 0
for value in dictionary.values {
    switch value {
        case let value as Int:
            total += Double(value)
        case let value as Double:
            total += value
        case let value as String:
            total += 1
        case let value as Bool:
            if value == true {
                total += 2
            } else {
                total -= 3
            }
        default:
            break
    }
}

print(total)
/*:
 Create a variable `total2` of type `Double` set to 0. Loop through the collection again, adding up all the integers and doubles. For each string that you come across during the loop, attempt to convert the string into a number, and add that value to the total. Ignore booleans. Print the total.
 */
var total2: Double = 0

for value in collection {
    switch value {
        case let value as Int:
            total2 += Double(value)
        case let value as Double:
            total2 += value
        case let value as String:
            if let value = Double(value) {
                total2 += value
            }
        default:
            total += 0
    }
}

print(total2)
//: page 1 of 2  |  [Next: App Exercise - Workout Types](@next)
