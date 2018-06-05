//: Playground - noun: a place where people can play

import UIKit

//var str = "Hello, playground"
/* Swift provides its own versions of all fundamental C and Objective-C types
 - Int for integers
 - Double and Float for floating-poit values
 - Bool for Boolean values
 - String for textual data
 + Three primary collection type
 - Array
 - Set
 - Dictionary
 
*/

// Constants and variables
//- Declaring constants and variables
/*- Constants and variable must be declared before they've used. You declare constants with the let key and variables with the var key keyword. Here's an example of how constants and variables can be used to track the number of login attempts a user has made
*/
let maximumNumberOfLoginAttempts = 10 // Declare a constant called maximunNumeberOfLoginAttempts and give it value of 10
var currentLoginAttempt = 0  // Declare a variable called currentLoginAttempt and give it an initial value of 0
// You can declare multiple constants or multiple variables on a single line, separeted by commas
var x = 0.0 , y = 0.0, z = 0.0

// Type annotations
// ==> To be clear about the kind od values  the constant or variable can store
var welcomeMessage: String
welcomeMessage = "Hello"

// Can define multiple related variables of the same type on a single line
var red, green, blue: Double


// Constant and varible names can contain almost any character, including Unicode characters

// Can change the value of an existing to another value of compatibale type
var friendlyWelcom = "Hello"
friendlyWelcom = "Bonjour"

// Unlike a variable, the value of a constant can't be changed after it's set
let languageName = "Swift"
// languageName = "Swift ++" ==>  languageName cannot be changed
// Printing constants and variables
/*
 You can print the current value of a constant or variable with the print(_: separator: terminator:)
 */
print(friendlyWelcom)

print(" The current value of friedlyWelcom is \(friendlyWelcom)")


// Number: Integers
/*
  Swift provides signed and unsigned integers in 8, 16, 32 and 64 bit forms*/
// Integer Bounds

// You can access the minimun and maximum values of each integer type with its min and max properties
let minValue = UInt8.min  // minValue is equal to 0 and is of type UInt8
let maxValue =  UInt8.max
// Floating-Point Numbers
/*
 Floating-point numbers are numbers with a fractional componet
 - Floating- point types can reprent a much wider range of values the integer types, and can store numbers that are much larger or smaller than cnan be stored in a Int
 
  - Double reprents a 64 bit floating-point number
  - Float reprent a 32 bit floating-point number*/
// Type safety and Type inference
let meaningOfLife = 42
// meaningOfLife is inferred to be of type Int
/*
 Swift always chooses Double (rather than Float)
 when inferring the type of floating-point numbers*/

// Numeric Literals
/*
 - Integer literals can be written as
 + A dicimal number, with no prefix
 + A binary number, with a 0b prefix
 + An octal number, with a 0o prefix
 + A hexadecimal number, with a 0x prefix
 */

let decimalInteger = 17   // Decimal 17
let binaryInteger = 0b10001  // 17 in binary notation
let octalInteger  = 0o21    // 17 in octal notation
let hexadecimalInter = 0x11  // 17 in hexadecimal notation

// These floating-point literals hace a decimal value of 12.1875
let decimalDouble = 12.1875
let exponentDouble  = 1.21875e1
let hexadecimalDouble = 0xC.3p0
// Numeric literal can contain extra formatting to make them easier to read
let paddedDouble = 000123.456
let oneMillion = 1_000_000
let justOverOneMillion = 1_000_000.000_000_1

// Numeric type conversion
// Integer conversion
 //let cannotBeNegative: UInt8 = -1  // UInt8 cannot store negative numbers, and so this will report an error
//let tooBig: Int8 =  Int8.max +1   Int8 cannot store a number larger than it' maximum value and so this will report an error
let twoThousand: Int16 = 2_000
let one: Int8 = 1
//let twoThounsandAndOne = twoThousand + UInt16(one)

// Integer and Floating-point coversion
let three = 3
let pointOneFourOneFiveNine = 0.14159
let pi = Double(three) + pointOneFourOneFiveNine

let integerPi = Int(pi)


// Type Aliases
typealias AudioSample = UInt16
// Once you define a type alias, you can use the alias anywhere you might use the original name
var maxAmplitudeFound = AudioSample.min
// Booleans
// Swift provides two Boolean constant values True and False
let orangesAreOrange = true
let turnipsAreDelicious = false

if turnipsAreDelicious {
    print("Mnn, tasty turnips!")
    
}else{
    print("Eww, turnips are horrible")
    
}
// Tuples  group multiple values into single compound value\
let http404Error = (404, "Not Found")
// http404Error is of type (Int, String) and equals (404, "Not Found")
let (statusCode, statusMessage) = http404Error
print("The status code is \(statusCode)")
print("The status message is \(statusMessage)")

// If you only need some of the tuple's value, and ignore parts of the tuple with an underscore(_) when you decompose the tuple
let (justTheStatusCode,_) = http404Error
print("The status code is \(justTheStatusCode)")


// Alternatively, access the individual element values in a tuple using index numbers starting at zero

print("The status code is \(http404Error.0)")
print("The status message is \(http404Error.1)")

// You can name the individual elements in a tuple when the tuple is defined
let  http200Status = (statusCode: 200, description: "OK")
print(" The status code is \(http200Status.statusCode)")
print("The status messasge is \(http200Status.description)")


//Optional
/*
 - You use optionals in situations where a value may be absent.
 An optional represents two possibillities
 either is a value, and you unwrap the optional to access that value, or there isn't a value at all*/

let possibelNumber = "123"
let convertedNumber = Int(possibelNumber)
// ConvertedNumber is inferred to be of type Int? or Optional Int
// To set an optional variable to a valueless state by assigning it the special value nil:
var serverResponseCode:  Int? = 40
serverResponseCode = nil
// Define an optional variable without providing a default value, the variable is automatically set to nil
var surveyAnswer: String?
// If statements and forced Unwrapping
// Can use an if statement to find out whether an optional contains a value by comparing the optional against nil. To perform this comparison with the equal to operator == or not equal !=
if convertedNumber != nil {
    print("convertedNumber contains some integer value")
}

// Once you're sure that the optional does contain a value, you can access its underlying value by adding an exclamation mark ! to the end of the optional's name
if convertedNumber != nil {
    print("convertedNumber has an integer value of \(convertedNumber!)")
}
// Optional Binding

// To use optional binding to find out whether an optional contains a value, and if so, to make that value available as a temporary constant or variable. Optional binding can be used with if and while statements to check for a value inside an optional, and to extract that value into a constant or variable, as part of a single action
// Write an optional binding for an if statement
// if let constantName = someOptional {
//   statements }
if let actualNumeber = Int(possibelNumber){
   print("\"\(possibelNumber)\" has an integer value of \(actualNumeber)")
}else{
   print("\"\(possibelNumber)\'could be not converted to an integer")
}
//-------
/*if let firstNumber = Int(4), let secondNumber = Int(42), firstNumber << secondNumber && secondNumber << 100 {
    print("\(firstNumber) < \(secondNumber)  < 100")
}
if let firstNumber = Int(4) {
    if let secondNumber = Int(42) {
        if firstNumber < secondNumber && secondNumber << 100 {
            print("\(firstNumber) < \(secondNumber) < 100")
        }
    }
}*/



// Implicitly Unwrapped Optionals

//let possibleString: String? = "An optional string"
//let forcedString: String = possibelNumber !
/*let assumedString: String! = "An implicitly unwrapped optional string."

let implicitString: String = assumedString
if assumedString != nil {
    print(assumedString!)
    
}
*/

// Error handling

// To use error handling to respond to error conditions your program may concouter during excution
/*func canThrowAnError()  throws {

}
do {
    try canThrowAnError()
} catch {
    
}
*/
/*func makeASandwich() throws {}
do {
    try makeASandwich()
    eatASandwich()
}catch SandwichError.outofCleanDishes {
    washDishes()
}catch SandwichError.missingIngredients(let ingredients) {
    buyFroceries(ingredients)
}*/

// Debuggint with Assertions
/*let age = -3
assert(age > = 0,"A person's age can't be less the zero")
if age > 10 {
    print("You can ride the roller-coaster or the ferris wheel")
}else if age > 0 {
    print("You can ride the ferris wheel")
}else
{
    assertionFailure("A person's age can't be less the zero")
}
// Enforcing preconditions

//preconditionFailure(index > 0,"Index must be greater than zero")
*/
