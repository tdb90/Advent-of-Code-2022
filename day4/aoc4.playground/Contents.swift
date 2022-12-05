import Cocoa

var testInput = """
2-4,6-8
2-3,4-5
5-7,7-9
2-8,3-7
6-6,4-6
2-6,4-8
"""

var input = ""

var pairsOfElves = input.components(separatedBy: "\n")

var firstElves: [[String]] = []
var secondElves: [[String]] = []

for pairOfElves in pairsOfElves {
    var splitpair = pairOfElves.components(separatedBy: ",")
    firstElves.append(splitpair[0].components(separatedBy: "-"))
    secondElves.append(splitpair[1].components(separatedBy: "-"))
}

var rangeOfFirstElves: [ClosedRange<Int>] = []
var rangeOfSecondElves: [ClosedRange<Int>] = []


for firstElf in firstElves {
    var rangeMin = Int(firstElf[0])
    var rangeMax = Int(firstElf[1])
    let rangeFirstElf = rangeMin! ... rangeMax!
    rangeOfFirstElves.append(rangeFirstElf)
}

for secondElf in secondElves {
    var rangeMin = Int(secondElf[0])
    var rangeMax = Int(secondElf[1])
    let rangeSecondElf = rangeMin! ... rangeMax!
    rangeOfSecondElves.append(rangeSecondElf)
}

var overlappingPairs = 0
var partiallyOverlappingPairs = 0

for i in 0 ..< rangeOfFirstElves.count {
    if rangeOfFirstElves[i].overlaps(rangeOfSecondElves[i]) {
        partiallyOverlappingPairs += 1
        if rangeOfSecondElves[i].contains(rangeOfFirstElves[i].lowerBound) && rangeOfSecondElves[i].contains(rangeOfFirstElves[i].upperBound) {
            overlappingPairs += 1
        } else if rangeOfFirstElves[i].contains(rangeOfSecondElves[i].lowerBound) && rangeOfFirstElves[i].contains(rangeOfSecondElves[i].upperBound) {
            overlappingPairs += 1
        }
    }
}

overlappingPairs
partiallyOverlappingPairs


