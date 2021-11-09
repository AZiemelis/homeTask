/*
 Ex1:
 1.1 Declare two variables of type Float and assign each a number with a fractional part - for example, 3.14 or 42.0
 1.2 Declare another variable of type Double and assign it the sum of two variables of type Float
 1.3 Print the result with print ()

 */

/*
 Ex2:
 2.1 Create a variable numberOne and assign any integer value to it
 
 2.2 Create another integer variable numberTwo and assign it any value less than numberOne
 
 2.3 Set the new integer constant result to the result of dividing numberOne by numberTwo
 
 2.4 Assign the new integer constant remainder the remainder of numberOne divided by numberTwo
 
 2.5 Output to the console the message: "When dividing <...> by <...>, the result is <...>, the remainder is <...>".
 
 */

/*
 Ex3:
 You need to buy several new MacBook Pro, each cost 1000 EUR.
 If you are buying 5 and more, with discount it will cost you 900 each! If you are buying 10 and more with discount it will cost you 850 each! Create if-else statements to check Conditions of buying in different amount!
 print("new: \(qty) MacBook Pro with the price of: \(price) EUR, will cost you: \(totalSum) Eur")
 */


/*
 Ex4:
 Create String userInputAge and put value "33a" and convert to Int to make Fatal error: Unexpectedly found nil while unwrapping an Optional value!
 Fix this Fatal error inside the if-else statements to print whenever this age can be converted to Int or not!
 */


/*
 Ex5:
 Calculate the number of years, months, days have passed from you birthday to current date.
 print("Total years: \(totalYearsFromBirth) , total months: \(totalMonthFromBirth), total days: \(totalDaysFromBirth) have passed")
 */

/*
 Ex6:
 Use Exercise 5 monthOfBirth to calculate in which quarter of the year you were born.
 Use switch case to print("I was born in the ... quarter")
 */

//Arturs Ziemelis

//MARK: - TASK 1
print("Task 1:")
import UIKit

//1.1
var float1:Float = 123.34
var float2:Float = 46.321

//1.2
var double1:Double = Double(float1) + Double(float2)

//1.3
print(double1)

//MARK: - TASK 2
print("\nTask 2:")
//2.1
var numberOne = 12
//2.2
var numberTwo = 9
//2.3
let numberResult = numberOne / numberTwo
//2.4
let numberRemainder = numberOne % numberTwo
//2.5
print("When dividing \(numberOne) by \(numberTwo), the result is \(numberResult), the remainder is \(numberRemainder)")

//MARK: - TASK 3
print("\nTask 3:")
let qty: Int = 10
var price:Int = 1000
let totalSum:Int

if qty >= 10 {
    price = 850
    totalSum = price * qty
    
    print("new: \(qty) MacBook Pro with the price of: \(price) EUR, will cost you: \(totalSum) Eur")
}else if qty >= 5 {
    price = 900
    totalSum = price * qty
    
    print("new: \(qty) MacBook Pro with the price of: \(price) EUR, will cost you: \(totalSum) Eur")
}

//MARK: - TASK 4
print("\nTask 4:")
let userInputAge:String = "33a"
if Int(userInputAge) == nil {
    print("This age cannot be converted to Int")
}else {
    print("This age can be converted to Int")
}


//MARK: - TASK 5
// I dont know if its the best solution
print("\nTask 5:")
import Foundation
// Creating birth date
var dateComponents = DateComponents()
dateComponents.year = 2000
dateComponents.month = 6
dateComponents.day = 9
dateComponents.timeZone = TimeZone(abbreviation: "GMT") // Eastern European Standard Time
dateComponents.hour = 22
dateComponents.minute = 00

// Create date from components
let userCalendar = Calendar(identifier: .gregorian)
let firstDate = userCalendar.date(from: dateComponents)

//Define current date
let secondDate:Date = Date()
let calendar = Calendar.current

// Replace the hour (time) of both dates with 00:00
let date1 = calendar.startOfDay(for: firstDate!)
let date2 = calendar.startOfDay(for: secondDate)

var days = calendar.dateComponents([.day], from: date1, to: date2)
var years = calendar.dateComponents([.year], from: date1, to: date2)
var months = calendar.dateComponents([.month], from: date1, to: date2)

// Next problem we have: we dont need "isLeapMonth: False"

var totalDaysFromBirth:String = "\(days)"
var totalYearsFromBirth:String = "\(years)"
var totalMonthFromBirth:String = "\(months)"
let wordToRemove = " isLeapMonth: false "

//Correct the day
if let range = totalDaysFromBirth.range(of: wordToRemove) {
    totalDaysFromBirth.removeSubrange(range)
}

let RemoveDay = "day: "

if let range = totalDaysFromBirth.range(of: RemoveDay) {
    totalDaysFromBirth.removeSubrange(range)
}
// Correct the year
if let range = totalYearsFromBirth.range(of: wordToRemove) {
    totalYearsFromBirth.removeSubrange(range)
}

let RemoveYear = "year: "

if let range = totalYearsFromBirth.range(of: RemoveYear) {
    totalYearsFromBirth.removeSubrange(range)
}
// Correct the month
if let range = totalMonthFromBirth.range(of: wordToRemove) {
    totalMonthFromBirth.removeSubrange(range)
}

let RemoveMonth = "month: "

if let range = totalMonthFromBirth.range(of: RemoveMonth) {
    totalMonthFromBirth.removeSubrange(range)
}

//Result
print("Total years: \(totalYearsFromBirth), total months: \(totalMonthFromBirth), total days: \(totalDaysFromBirth) have passed")

//MARK: - TASK 6
print("\nTask 6:")
let monthOfBirth: String = "June"

switch monthOfBirth {
case "January","February","March":
    print("I was born in first quarter")
    
case "April","May","June":
    print("I was born in second quarter")
    
case "July","August","September":
    print("I was born in third quarter")
    
case "October","November","December":
    print("I was born in fourth quarter")
    
default:
    print("Error")
}
