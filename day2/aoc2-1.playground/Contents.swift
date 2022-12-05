import Cocoa
import Foundation

var input = """
B Y
A X
C Z
A Z
B Y
B Y
A X
C Z
B Y
B Y
C Z
C X
B Y
C Z
B Y
C Z
A Z
A Z
A X
B Y
A X
C Z
C Y
C Z
C Z
C Z
A X
A X
B Y
A Z
B Z
B Y
A X
A X
C Z
B Y
B Y
B Z
A Z
A X
C Z
B Z
A Z
C Z
C Z
C Z
C Z
C Z
C Z
B X
A Z
A Z
C Z
C Z
C Z
A Y
C Z
B Y
C Z
C Z
C Z
B Y
B Z
A X
A X
C Z
B Y
B Y
B Z
A X
A X
C Z
B Y
C Z
A X
C Z
A X
C X
A Y
A Y
B Y
A Y
C Z
B Y
C Z
C Z
A X
C Z
A Z
C Z
A X
C Z
B Y
B Y
C Z
B Z
C Y
C Z
B Y
C Z
C Z
B X
A X
C Z
C Z
B Y
C Z
B Y
A Z
B Y
B Z
A Z
C Z
C Z
C Z
A Z
C Z
A X
A X
A Z
C Z
A X
A Z
C Z
A Z
A Y
B Y
A Z
B X
A X
C Z
C Z
B Y
C Y
B Y
B Z
B Y
B Y
C Z
C Z
C Z
C Z
A Y
C Z
B Z
A X
B Y
A Y
C Z
C Z
C Z
C Z
C Z
B Y
C Z
B Y
C Z
B Y
C Z
C X
A Y
A X
C Y
B Y
A Z
C Z
C Z
B Y
B Y
A X
B Y
A Y
A X
A X
B Y
A X
A X
B Y
C Z
C Z
B Y
C Z
A Z
C Z
B Z
C Z
A Y
C Z
B Z
C Z
A Y
A Y
C Z
A X
B Y
C Z
A X
B Y
B Y
A X
A X
C Z
B Y
C Z
B Z
C Z
A X
C Z
B Y
B Y
A X
B Z
C Z
B Z
B Y
B Y
A Y
B Z
A Z
C Z
C Z
A X
A X
A X
C Z
B Y
A X
A Y
C Z
A X
B Y
A Y
A Y
C Z
C Z
C Z
A Z
B Z
C Z
B Y
C Z
C Z
A Y
A X
C Z
B Y
C Z
C Z
B Y
B Y
A Y
C Z
B Y
B Y
A Z
C Z
C Z
C Z
C Z
B Z
C Z
B Y
A X
C Z
B Z
A Z
A X
C Z
A X
A X
B Y
C Z
C Z
A X
C Z
A Y
C Z
C Z
A X
B Y
C Z
B Z
B Y
C Z
A Z
C Z
C Z
A Y
A Z
C Z
C Z
B Z
C Z
B Y
C Z
C Z
A X
C Z
C Z
B Z
C Z
B Z
A X
B Y
C Z
C Z
C Z
C Z
C Z
A Z
A Y
A X
A X
C Z
B X
A Z
A X
C Z
B Z
C Z
B Y
A Z
C Z
B Y
C Z
C Y
A Y
C Z
B Y
B Y
C Z
A X
C Z
A X
C X
A X
B X
A X
C Z
C Z
C Z
B Y
B Y
C Z
B Z
C Z
B Y
A X
C X
C Z
B Y
A Z
A X
B Y
B Y
C Z
C Z
C Z
B Y
A X
A X
B Y
A X
A Y
C Z
B Y
A X
A Y
B Y
A X
A X
C Z
C Z
C Z
C Z
C Z
A X
A X
B Z
A Y
C Z
A X
C Z
B Y
C Z
A Z
C Z
C Z
A Y
B Z
C Z
A X
B Y
B Y
C Z
A Y
C Z
C Z
C Z
C Z
C Z
B Y
A X
A X
B Y
C Z
C Z
A Z
C Z
C Z
C Z
A Y
B Z
B Y
B Y
C Z
A X
A Y
C Z
A X
A Y
A X
C Z
A Y
B Z
B Y
B Z
C Z
C Z
C Z
B Z
B Z
C Z
C Z
C Z
C Z
B Y
B Z
A Y
A Y
B Z
B X
A Z
A X
C Z
A X
A Y
A X
A X
A X
C Z
C Z
C Z
A X
C Z
C Z
B Y
A X
C Z
A X
A Y
A X
C Z
A Y
C Z
B Y
A X
A Y
A Z
C Z
B Y
B Y
B Z
A X
A X
B Y
C Z
A X
B Y
C Z
C Z
C Z
A X
A Y
A Z
C Z
B Y
C Z
A X
A Z
A Z
B Y
B Y
A X
B Y
C Z
B Z
C Z
B Y
A Z
C Z
A Y
A X
A Z
B Y
A X
A Z
C Z
A Z
C Z
C Z
A X
C Z
A X
C Z
A X
C Z
B Y
C Z
A X
B Y
A Y
C X
A Y
A Z
A X
A Z
B Y
A X
C Z
A Y
B Y
B Y
C Z
B Y
C Z
B Y
B Z
C Z
C Z
B Y
A X
C Z
B Y
C Z
C Z
C Z
C Z
C Z
A X
A X
A Z
A Z
C Z
A Y
B Y
A Y
A Y
B Y
C X
A Y
C Z
C Z
C Z
A Y
A Y
A Y
C Z
A X
B Y
A X
B X
A Y
A Y
A X
B Z
B Y
C Z
B Y
C Z
B Y
C Z
A Z
C Z
A X
B Y
A X
C Z
B Z
C Z
B Y
C Z
C Z
C Z
A X
A X
B Y
B Z
A Z
A X
A X
C Z
A X
A X
C X
C X
C Z
B Y
B Z
C Z
A X
B Y
B Y
A Z
C Z
C Y
A X
B Y
B Y
C Y
A X
A X
A X
A X
A Z
B Y
A Z
C Z
C Z
B Y
B Z
B Y
A Y
C Z
C Z
B Y
A Y
C Z
A X
C Z
C Z
A X
B Y
C Z
C Z
A X
A Z
C Z
A Z
C Z
B Z
A X
A Y
B Y
A X
A Y
A Z
A Y
A X
A Y
C Z
A X
C Z
C Z
A X
A Y
A X
C Z
A Z
C Z
C Z
C Z
A X
B Y
A X
C Z
C Z
C Z
C Z
A X
C Z
C Z
B Y
A Y
A X
A X
C Z
C Z
A X
C Z
C Z
B Y
C Z
A X
C Z
C Z
A Y
A X
C Z
A Y
C Z
A X
B Z
B Y
A X
B Y
C Z
A X
C Z
C Z
A X
C Z
B X
C Z
C Z
A Y
C Z
A Y
B X
C Z
B Y
C Z
A Z
C Z
A X
C Z
C Z
C Z
C Z
A X
B X
C Z
C Z
B Y
A Z
A Y
C Z
A X
A Z
A X
A X
B Y
A X
C Z
A X
A X
B Y
A X
B Z
C Z
A Z
A Y
A X
B Y
A X
A Z
A X
B Y
B Z
B Y
C Z
B Y
A X
A Y
C Z
A X
B Z
C Z
C Z
A X
A X
A Y
C Z
C Z
C Z
A Y
B Y
A X
C Z
B Y
B Y
A X
A X
B Y
C Z
B Y
A X
A Z
C Z
C Z
C Z
C Z
B Z
C Z
A Z
C Z
A Y
B Y
A Y
C X
C Z
C Z
A Y
A X
B Y
C Z
A X
C Z
A X
A Y
A Y
B Z
C Y
B Y
C Z
B Y
A X
C Z
C Z
C Z
C Z
B Y
A X
B Y
A Y
C Z
B Y
A Z
B Z
C Z
C Z
C Z
C Z
A Y
A X
C Z
A X
C Z
C Z
C Z
C Z
C Z
B X
C Z
B Z
A X
A X
A Y
A X
A Z
B Y
A Y
C Z
C Z
C Z
C Z
C X
A Y
C Z
C Z
B Y
A X
C Y
B Y
C Z
C Z
C Z
B X
A X
C Z
A X
C Z
C Z
C Z
C Y
A X
C Z
A Z
C Z
C Z
B Y
A X
A X
A Z
A Y
C Z
C Z
C Z
C Z
C Z
C Z
C Z
B Y
A Y
A X
C Z
C Z
A X
A X
C Z
C Z
B Y
A X
A X
C Z
C Z
C Z
B Y
A Y
B Z
A Y
C Z
A X
C Z
C Z
B Y
A Y
A X
B Z
A X
C Z
C Z
C Z
C Z
B Z
C Z
B Y
C Z
C Z
C Z
B Y
C Z
C Y
B Z
B Z
A Y
C Z
C Z
B Z
B Y
C Z
B Y
C Z
C Z
B Y
C Z
C Z
C Z
A Y
A X
B Y
C Z
C Z
C Z
B Y
C Z
A Y
A X
A Z
A Y
C Z
C Z
C Z
B Z
C Z
B Y
C Z
B Y
A Y
C Z
C Z
A Z
B Y
A X
A X
B Z
A X
C Z
C Z
C Z
A X
B Z
C Z
A X
C Z
C Z
C Z
C Z
C Z
C Z
A Y
C Z
A Z
A X
B Y
C Z
C Z
A X
A Y
C Z
B Y
A X
C Z
C Z
A X
A Y
A X
B Z
C Z
A X
C Z
A X
A Z
B Y
C Z
C Z
C X
B Z
B X
B Y
A Z
C Z
A X
B Z
A X
B Y
C Z
B Z
A Z
A Z
C Z
C Z
C Z
C Z
B Y
B Y
A Y
A X
A X
B Y
A Z
A X
C Z
B Z
A X
A X
B Y
A X
C Z
A X
C Z
C Z
C Z
C Z
A X
A X
A Z
C Z
A X
B Z
C Z
B Y
C Z
C Z
A Y
C Z
B Z
C Z
C Z
B Y
C Z
C Z
B Y
A X
A X
C Z
C Z
C Z
A X
C Z
C Z
B Y
C Z
B Z
C Z
A X
C Z
A X
C Z
A Y
C Z
C Z
A X
B Y
C Z
C Z
C Z
A X
B Y
C Z
A X
B Z
A X
B Z
C Z
A X
C Z
B Y
A Z
B X
A Y
C Z
C Z
B X
A Y
A X
C Z
A X
C Z
B X
A X
B Y
A Z
A X
C Z
A Y
C Z
A X
C Z
C Z
C Z
C Z
A Z
C Z
C Z
B Y
A X
B Y
C Z
B Y
A X
C Z
C Z
A X
A X
B Y
C Z
B Y
C Z
C Z
A Z
C Z
C Z
C Z
A Y
A Z
C Z
C Z
C Z
C Z
A X
C Z
A X
A X
B Z
C Z
C Z
C Z
B Z
A X
C Z
A Y
B Y
C Z
A Y
C Z
C Z
A X
A X
B Y
A Z
A Y
A X
B X
B Y
B Z
B Y
A X
C Z
C Z
B Z
B Z
B Z
C Z
C Z
B Y
B Y
B Y
C Z
B Y
A X
A Z
B Z
A X
B Z
A X
C Z
B Y
B X
A X
C Z
A X
C Z
C Z
C Z
B X
B Y
A Y
A X
A X
A Y
C Z
C Z
B Y
C Z
B Z
A X
C Z
C Z
C Z
A X
A Y
C Z
B Z
A X
A Y
A Z
C Z
B Y
B Z
A X
C Z
A X
A X
A Z
C Z
C Z
B Y
A X
C Z
A Y
A Z
A X
A X
C Z
A Y
B Y
C Z
A Z
C Z
B Y
A X
A X
A X
C Y
C Z
A Y
B Z
C X
A X
A X
A X
A X
B Z
B Y
C Z
B Y
A X
B Y
C Z
B Y
C Z
C Z
A X
B Y
A Y
B X
A X
B X
C Z
A Z
A X
B Y
B Y
C Z
A X
A X
B Y
C Z
A X
C Z
A X
A Z
A Z
C Z
A Z
C Z
C Z
C Z
C Z
A Z
C Y
C Z
C Z
A Z
A Y
A X
B Z
C Z
C Z
C Z
A Y
C Z
C Z
C Z
C Z
A Z
B Z
A X
C Z
C Z
A Y
B Y
A X
C Z
A X
B Y
A X
A X
A Z
B Y
C Z
B X
C X
A X
A X
A X
C Z
C Z
A X
B Y
A Z
B Y
A X
A Y
C Z
B Y
C Z
B Y
A Y
B Y
A Y
A X
C Z
C Z
A X
B Y
A X
C Z
C Z
A Y
B Y
B Y
A Z
B Y
C Z
C Z
C Z
B Y
A X
B Y
A X
C Z
C Z
C Z
A X
C Z
C Z
B Y
C Z
B Z
B Y
A X
B Y
A Z
B Y
A X
B X
C Z
A Z
B Y
C Z
B Y
C Z
C Z
C Z
C Z
B X
A X
B Y
B Y
A X
C Z
A X
B Z
B Z
B Z
A X
C X
A X
A X
A X
B Y
B Y
C Z
C Z
A X
C Z
B Y
A X
C Z
A X
C Z
A X
B Y
C Z
C Z
A Y
B Y
C Z
A Z
C Z
A X
C Z
C Z
A Z
A Y
C Z
A X
B Y
B Z
C Z
A Y
A Y
C Z
C Z
B Z
A Z
C Z
A X
C Z
A X
C Z
C Z
C Z
B Y
C Y
B Y
A Y
A X
C Z
B Y
C Z
C Z
C Z
A Z
C X
A Y
C Z
A Y
A Y
C Z
A Z
C Z
C Z
C Z
C Z
C Z
B Y
A Y
B Y
A Z
B Y
A X
A X
B Y
A Z
B Y
C Z
B Z
A X
C Z
A Y
A Y
C Z
A X
A X
C Z
C Z
C Z
B Y
A X
C Z
B Y
C Z
B X
C Z
A Y
C Z
A X
C Z
A X
C Z
C Z
B Y
C Z
B Z
C Z
A Y
A X
A Z
C Z
C Z
C Z
C Z
C Z
A Z
B Y
B Y
B Y
C Z
C Z
C X
C Z
A X
B Y
C Z
C Z
A X
B Y
C Z
C Z
C Z
C Z
C Z
C Z
A X
B Z
C Z
C Z
C Z
A X
B Z
C Z
A X
C Z
A Y
B Y
C Z
B Z
B Y
C Z
B X
C Z
B Y
B Y
B Y
A X
A X
C Z
A Z
C Z
B Y
B Z
C Z
C Z
B Z
B Y
A Z
B Y
A X
A X
C Z
C Z
C Z
B Y
A X
C Z
C Z
A Y
C Z
B Y
C Z
C Z
C Z
C Z
C Z
C Z
B Y
B Y
C Z
A Z
A X
B Y
C Z
B Y
A X
A Z
C Z
B Y
A Z
C Z
B Y
A Z
A X
B Z
A X
C Z
B Y
C Z
A Y
C Y
A X
A Y
C Z
C Z
B Y
C Z
B Y
A Z
C Z
C Z
A X
C Z
B Z
A Y
B Z
A Z
A X
B Y
A Z
A Y
C Z
C Z
B Y
A X
B Y
C Z
A X
B Y
B Y
C Z
A Z
A X
C Z
B X
C Z
C Z
C Z
C Y
A Z
A X
C Z
C Z
A X
B Y
C Z
B Y
C Z
B Z
A Z
C Z
B Y
A X
C Z
C Z
B Z
C Z
A Z
B Y
B Z
C Z
C Z
A X
C Y
B Y
C Z
A X
C Z
C Z
B Y
B Z
C Z
C Z
A Y
A X
C Z
A X
B Z
B Y
A Z
B Z
C X
A X
C Z
C Z
C Z
A X
B Z
C Z
C Z
C Z
B Y
C Z
A X
C Z
C Z
B Y
C Z
A X
C Z
C Z
C Z
A X
A X
B Y
C Z
C Z
B Y
B Z
B Y
C Z
A X
A X
B Y
A X
B Y
C Z
A X
C Z
C Z
B Z
A X
B Y
C Z
C Z
C Z
C Z
A Z
C Z
A X
B Y
A Y
A Y
C Z
C Z
C Z
B Y
A Z
A X
B Y
C Z
A X
C Z
A X
C Z
A X
C Z
C Z
B Y
A Y
C Z
B Y
B Y
A X
C Z
A Y
A Z
C Z
C Z
C Z
A Y
B Y
C Z
C Z
B Z
C Z
B Z
B Y
A X
A X
C Z
B Z
C Z
C Z
A X
A X
B Z
A X
C Z
C Z
B Y
A X
C Z
A X
B Y
C X
A Z
B Y
C Z
A X
B Y
C Z
A X
B Y
C Z
B X
C Z
A Y
C Z
A X
C X
B Z
C Z
B Y
B Y
B Y
A Y
A X
C Z
C Z
A Y
B Y
A X
C Z
A X
C Z
C Z
A X
C Z
A X
C Z
B Y
C Z
A X
A Z
C X
B Y
C Z
C Z
B Z
A X
A X
B Y
C Z
A Y
B Y
C Z
A X
A Z
A X
B Y
A X
B Y
C Z
C Z
B Y
A X
B Y
B Z
C Z
B Z
A X
C Z
C Z
A Y
C Z
A X
C Z
B Y
C Z
C Z
C Y
C Z
C Z
A Y
C Z
C Z
A Z
A X
B Z
C Z
A Y
A X
B Z
C Z
C Z
B Y
B Z
A X
A X
C Z
B Y
A Y
C Z
A Z
A X
C Z
A X
C Z
C Z
A Z
C Z
C Z
C Z
A Y
B Y
A X
B Z
B Y
C Z
C Z
C Z
C Z
C Z
C Z
C Z
A Z
B Z
B X
A X
A Z
A X
A X
B Y
C Z
C Z
A X
B Y
A Y
C Z
B Z
C Z
A X
B Y
C Z
B Y
A Z
C Z
A Y
C Z
A X
C Z
A Z
B Y
A Y
A X
A X
A Z
C Z
C Z
C Y
C Z
A Y
A X
B Y
A Z
B Z
B Z
C Z
C Z
C Z
C Z
A X
A Y
B Y
C Z
B Y
C Z
A X
B Y
C Z
C Z
A Z
A X
B Y
C Z
A Y
C Z
C Z
C Z
A X
B Y
A X
B Y
C Z
C Z
B Y
C Z
A X
A X
C Z
B Y
B Z
A X
A X
A X
C Z
C Z
B Y
A X
C Z
A X
A Z
C Z
C Z
C Z
C Z
A Z
A X
B X
B Z
A Y
C Z
C Y
B Y
C Z
A Y
A X
B Z
B Y
C Z
B Y
C Z
A X
A Z
A X
C Z
B Y
B Y
B Y
A Z
C Z
C Z
B Y
C Z
B Y
A X
B Y
A X
B Y
C Z
C Z
B Y
A X
A Y
B Z
C Z
C Z
A X
B Y
A X
A X
A Y
B X
A X
A X
C Z
B Z
A X
C Z
A Y
A Z
C Z
A Z
A X
B Y
A X
C X
C Z
B Y
C Z
A X
A X
C Z
A X
B Y
A X
C Z
B Z
C Z
A X
C X
C Z
C Z
A X
C Z
A Y
C Z
A X
B Y
B Y
B Y
B Y
B Y
B Y
B Y
B Y
A Y
A Z
B Y
C Z
C Z
B Y
A Z
A X
A Y
A X
C Z
A Y
A Z
A Y
B Y
C Z
C Z
A Y
C Z
A X
B Y
C Z
A X
C Z
A X
B Y
C Z
C Z
A Z
A X
C Z
B Y
A Z
C Z
A X
C Z
B Y
B Y
C Z
C Z
C Z
C Z
B Z
C Z
C Z
C Z
C Z
C Z
B Y
B Y
A X
C Z
C Z
A Z
C Z
A X
C Z
C Z
A X
B Y
A X
C Z
B Y
B Y
A Y
A Y
A X
A Y
A Y
C Z
C Z
A Y
C Z
A Y
B Y
C Z
C Z
C Z
B Y
B Y
B Y
A X
C Z
B Y
C Z
C Z
C Z
C Z
A X
B Y
A X
C Z
A X
C Y
A Y
B Y
C Z
C Z
C Z
C Z
B Y
C Z
C Z
B Y
C Z
A X
A X
B Y
B X
C Z
B Y
A X
B Z
A Z
C Z
C Z
C Z
C Z
B Y
A Z
C Z
C Z
C Z
C Z
A X
A X
B Y
A Z
C Z
C Z
C Z
C Z
A Z
B Y
A X
B Y
C Z
C Z
B Z
C Z
A Y
C Z
A Y
B Y
C Z
A X
C Z
A X
B Z
B Y
B Y
A X
B X
A X
C Z
B Y
A X
A Z
C Z
C Z
A Z
C Z
C Z
B Y
C Y
C Z
A Z
A Z
C Z
B X
C Z
C Z
B Y
C Z
B Y
B Y
A X
A Y
B Y
A X
B Z
C Z
A Z
A X
A X
A Z
A Z
B Z
A X
B Y
C Z
B Y
A X
C Z
B Z
A Y
B Z
C Z
A X
B Z
A X
A Y
C Z
C Z
C Z
C Z
C Z
A Y
A Y
A X
B Y
C Z
A X
B Y
A X
B Y
C Z
A Z
C Z
C Z
C Z
C Z
C Z
B Y
B Z
C Z
A X
A Z
A X
A X
C Z
C Z
C Z
C Z
B Y
C Z
A X
C Z
C Z
C Z
C Z
C Z
B Y
A Z
A X
A Z
C Z
C Z
C Z
C Z
B X
C Z
C Z
A X
C Z
A Z
B Z
B Y
B Z
A Y
B Y
B Y
C Z
A Y
A Y
A Y
C Z
C Z
B Z
A X
C Z
A X
A X
A X
C Z
C Z
A Z
A X
A Y
C Z
C Z
A X
B Z
C Z
A X
C Z
A Z
A X
C Z
C Z
A X
A Z
B Y
A X
B Y
C Z
C Z
A X
B Z
C Z
B Y
C Z
A Z
C Z
A X
B Y
C Z
C Z
A Y
C X
A Y
A Y
C Z
C Z
A X
A Z
B Y
C Z
B Y
C Z
A Y
C Z
C Z
C Z
A Z
C Z
C Z
B Y
A Y
C Z
C Z
B Y
A X
C Z
B Y
C Z
B Y
C Z
B Y
A X
A Y
B Y
C Z
B Z
A Y
C Z
A Y
A Z
C Z
B Y
C Z
C Z
B Y
A Y
A Y
C Z
C Z
A Y
C Z
C X
C Z
C Z
C Z
A X
C Z
B Y
B Y
C Z
C Y
B Z
C Z
B Y
A X
A X
B Y
C Z
A X
C Z
B Z
C Z
A X
B Y
"""

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
