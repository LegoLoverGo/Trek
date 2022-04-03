import Foundation

class Game {
  var running: Bool
  let gameBoard: GameBoard
  
  private let parser: Parser
  
  init() {
    running = true
    gameBoard = GameBoard()
    parser = Parser()
  }
  
  func startGame() {
    while running {
      update()
      render()
      input()
    }
    
    NSLog("Quiting game")
  }
  
  private func update() {
    
  }
  
  private func render() {
    gameBoard.render()
  }
  
  private func input() {
    print("% ", terminator: "")
    let userInput = readLine()
    
    guard let userInput = userInput else {
      NSLog("Unable to parse input")
      running = false
      return
    }
    
    parser.parseCommand(userInput, game: self)
  }
}
