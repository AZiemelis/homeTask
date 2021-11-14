import UIKit

//MARK: - Task 1

var myTeam = "Boys"
var teams = ["Chicago Bulls", "Los Angeles Lakers", "Dallas Mavericks", "Brooklyn Nets"]
var resultsOfGames = ["Chicago Bulls": "102:99", "Brooklyn Nets": "107:102", "Dallas Mavericks": "94:88", "Los Angeles Lakers": "120:90"]

for game in teams {
    print("\(myTeam) against \(game) scored - \(resultsOfGames[game]!)")
}

//MARK: - Task 2

func calculateCash(cashInWallet:Int...) {
    var cash:Int = 0
    for i in cashInWallet {
        
        cash = cash + i
        
    }
    print("You have \(cash) euros")
}

calculateCash(cashInWallet: 5,10,20,50,200,500,100)

//MARK: - Task 3

func isEvenNumber(number:Int) -> Bool {
    
    if number % 2 == 0 {
        return true
    } else {
        return false
    }
}

isEvenNumber(number: 6)

//MARK: - Task 4

func createArray(array: [Int]) -> [Int]{
    let array = Array(1...100)
    return array
}

var array:[Int] = []
array = createArray(array: array)

for a in array {
    print(a,terminator: "")
    print(" ",terminator: "")
}
//MARK: - Task 5
var newArray:[Int] = []
for i in array {
    if isEvenNumber(number: i ) == false {
        newArray.append(i)
    }
}
print("\nTask 5 result: ")

for a in newArray {
    print(a,terminator: "")
    print(" ",terminator: "")
}
