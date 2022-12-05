import Cocoa
import Foundation

var input = ""

var inputtest = """
A Y
B X
C Z
"""

enum RockPaperScissorsChoice {
    case rock
    case paper
    case scissors
}

enum Outcome {
    case win
    case lose
    case draw
}

// Split input into rounds
var rounds: [String] = []
rounds = input.components(separatedBy: "\n")

// Split rounds into 2 choices and store the opponents' choice in opponentsChoice and my response in myResponse
var splitRound: [String] = []
var opponentsChoice: [RockPaperScissorsChoice] = []
var myResponse: [RockPaperScissorsChoice] = []
var outcomes: [Outcome] = []

for round in rounds {
    splitRound = round.components(separatedBy: " ")
    if splitRound[0] == "A" {
        opponentsChoice.append(.rock)
    } else if splitRound[0] == "B" {
        opponentsChoice.append(.paper)
    } else {
        opponentsChoice.append(.scissors)
    }
    if splitRound[1] == "X" {
        outcomes.append(.lose)
    } else if splitRound[1] == "Y" {
        outcomes.append(.draw)
    } else {
        outcomes.append(.win)
    }
}



// Deciding what shape to choose
func chooseShape (if opponentsChoice: RockPaperScissorsChoice, and outcome: Outcome) -> RockPaperScissorsChoice {
    switch (opponentsChoice, outcome) {
    case (.rock, .lose):
        return .scissors
    case (.rock, .draw):
        return .rock
    case (.rock, .win):
        return .paper
    case (.paper, .lose):
        return .rock
    case (.paper, .draw):
        return .paper
    case (.paper, .win):
        return .scissors
    case (.scissors, .lose):
        return .paper
    case (.scissors, .draw):
        return .scissors
    case (.scissors, .win):
        return .rock
    }
}


// Calculate points per round

func calculatePoints(for myResponse: RockPaperScissorsChoice, after outcome: Outcome ) -> Int {
    var pointsForRound = 0
    switch myResponse {
    case .rock: pointsForRound += 1
    case .paper: pointsForRound += 2
    case .scissors: pointsForRound += 3
    }
    switch outcome {
    case .win: pointsForRound += 6
    case .draw: pointsForRound += 3
    case .lose: pointsForRound += 0
    }
    return pointsForRound
}

// calculate total points
var totalPoints = 0
for i in 0 ..< opponentsChoice.count {
    var myResponse = chooseShape(if: opponentsChoice[i], and: outcomes[i])
    totalPoints += calculatePoints(for: myResponse, after: outcomes[i])
}

print(totalPoints)


