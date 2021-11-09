// Arturs Ziemelis
import UIKit

//MARK: - Exercise 1
let firstString: String = "I'm learning"
let secondString: String = "swift"

print("\(firstString) \(secondString) !!!")

// MARK: - Exercise 2
let myAge = 21
var myAgeInTenTears:Int = myAge + 10
let daysInYear = 365.25
var daysPassed:Float = Float(myAgeInTenTears) + Float(daysInYear)

print("My age is \(myAge). After 10 years, I will be \(myAgeInTenTears) years old. From the moment of my birth day have passed apporiximately \(daysPassed)")

// MARK: - Exercise 3
let AC = 8.0
let CB = 6.0
let AB: Double = sqrt(AC*AC+CB*CB)
var areaOfABC = (AC*CB)/2
var perimeterOfABC = AB+AC+CB

print("AB = \(AB)\nS=\(areaOfABC) \nP=\(perimeterOfABC)")

