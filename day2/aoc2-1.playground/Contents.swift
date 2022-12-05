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


// Split input into rounds
var rounds: [String] = []
rounds = input.components(separatedBy: "\n")

// Split rounds into 2 choices and store the opponents' choice in opponentsChoice and my response in myResponse
var splitRound: [String] = []
var opponentsChoice: [RockPaperScissorsChoice] = []
var myResponse: [RockPaperScissorsChoice] = []

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
        myResponse.append(.rock)
    } else if splitRound[1] == "Y" {
        myResponse.append(.paper)
    } else {
        myResponse.append(.scissors)
    }
}



// Rock paper scissors game
enum Outcome {
    case win
    case lose
    case draw
}

var outcomes: [Outcome] = []

func playRound(with opponentsChoice: RockPaperScissorsChoice, versus myResponse: RockPaperScissorsChoice) -> Outcome {
    switch (opponentsChoice, myResponse) {
    case (.rock, .rock):
        return .draw
    case (.rock, .paper):
        return .win
    case (.rock, .scissors):
        return .lose
    case (.paper, .rock):
        return .lose
    case (.paper, .paper):
        return .draw
    case (.paper, .scissors):
        return .win
    case (.scissors, .rock):
        return .win
    case (.scissors, .paper):
        return .lose
    case (.scissors, .scissors):
        return .draw
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
    var outcomeOfRound = playRound(with: opponentsChoice[i], versus: myResponse[i])
    totalPoints += calculatePoints(for: myResponse[i], after: outcomeOfRound)
}

print(totalPoints)

