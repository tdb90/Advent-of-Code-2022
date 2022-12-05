import Cocoa
import Foundation

let input = ""

var inputList: [String] = []
var splittedInputArray = [[String]]()
var splittedInputArrayIntegers = [[Int]]()
var inputSplitInt: [Int] = []

//Splitting the input into the different elves
var inputSplit = input.components(separatedBy: "\n\n")
    //print(inputSplit[0])

//var splittedInputTest = inputSplit[0]
    //var secondSplitTest = splittedInputTest.components(separatedBy: "\n")
    //print(secondSplitTest)

//Make an array of the different calories an elve holds
for i in 0 ..< inputSplit.count {
    var splittedInput = inputSplit[i]
    var secondSplit = splittedInput.components(separatedBy: "\n")
    splittedInputArray.append(secondSplit)
}
var elveTest = splittedInputArray[0]
elveTest[0]
var elveIntTest = Int(elveTest[0])

//Make integers of the elve arrays
for i in 0 ..< splittedInputArray.count {
    var elve = splittedInputArray[i]
    var elveInt: [Int] = []
    for i in 0 ..< elve.count {
        var singularElveInt = Int(elve[i])
        elveInt.append(singularElveInt!)
    }
    splittedInputArrayIntegers.append(elveInt)
}

//Calculate sum of calories per elve
var caloriesPerElve: [Int] = []
for i in 0 ..< splittedInputArrayIntegers.count {
    var elve = splittedInputArrayIntegers[i]
    var totalCaloriesPerElve = elve.reduce(0, +)
    caloriesPerElve.append(totalCaloriesPerElve)
}

//Biggest calorie number
var largestCalorie = caloriesPerElve.max()

//Biggest three elves

var biggestElves = caloriesPerElve.sorted(by: >)
var totalCalories = biggestElves[0] + biggestElves[1] + biggestElves[2]
