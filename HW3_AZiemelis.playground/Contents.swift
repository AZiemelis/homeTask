/*
 Exercise 1
 The user opens a deposit in the bank for 5 years in the amount of 500_000 Eur. The interest rate per annum \(rate). Calculate the amount of income \(profit) at the end of the \(period).
 for _ in 1...period{
 }
 print("Amount of income after \(period) years will be \(profit) Eur. My total deposit will be \(deposit) Eur !")
 */

/*
 Exercise 2
 Create an integer array with any set of numbers and  print("My even numbers are: \(evenNumber)")
 Use a % inside the for loop.
 */

/*
 Exercise 3
 Inside the for loop create randomNumber for the random Int calculation. Calculate and print("Number 5 will be after \(counter) shuffles"). Don't forget to make a break inside the if statement.
 */


/*
 Exercise 4
 A bug is climbing to a 10-meter electric post. During the day, bug can climb two meters, during the night she slides down to 1 meter. Determine with the help of the cycle how many days bug will climb on the top of the post. Think about which loop to use in which situation. print("bug will spend \(numberOfDays)) to reach top of the post")
 */

//Arturs Ziemelis
import UIKit
//MARK: - TASK 1
var deposit:Double = 50000.0
let period:Int = 5
var profit:Double = 0
let rate:Double = 10 // precentage
var totalAmount:Double = 0

// Deposit calculator is not correct
// Do not know how to calculate it
for _ in 1...period {
    totalAmount = (deposit * pow((1 + (rate/4) ), 4.0) )
}

profit = totalAmount - deposit

print("Amount of income after \(period) years will be \(profit) Eur. My total deposit will be \(deposit) Eur !")
		
//MARK: - TASK 2

var anyNumbers:[Int] = [5,4,53,6,213,57,5,21,2,7]

print("My even numbers are: ", terminator: "")
for number in anyNumbers {
    if number % 2 == 0 {
        print(number, terminator: "")
        print(" ",terminator: "")
    }
}

//MARK: - TASK 3

var counter:Int = 1

while true {
    let randomNumber = Int.random(in: 0..<10)
    if randomNumber == 5 {
        break
    }else {
        counter = counter + 1
    }
}

print("\nNumber 5 will be after \(counter) shuffles")

//MARK: - TASK 4
var bugProgress:Int = 0
var numberOfDays:Int = 1
var electricPostHeight:Int = 11

while true {
    if bugProgress >= electricPostHeight {
        break
    }
    
    bugProgress = bugProgress + 2
    
    if bugProgress >= electricPostHeight {
        break
    }
    
    numberOfDays = numberOfDays + 1
    bugProgress = bugProgress - 1
    
    
}

print("Bug will spend \(numberOfDays) days to reach top of the post")
