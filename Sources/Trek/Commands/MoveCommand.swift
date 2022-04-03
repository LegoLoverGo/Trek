import Foundation

class MoveCommand: Command {
  override func getLabel() -> String {
    return "move"
  }
  
  override func run(_ game: Game, args: [String]) {
    if args.count != 3 {
      NSLog("Command `move` requires 2 arguments")
      return
    }
    
    let gameBoard = game.gameBoard
    let player = gameBoard.player
    
    guard let x = Int(args[1]) else {
      NSLog("Argument 1 not a number")
      return
    }
    
    guard let y = Int(args[2]) else {
      NSLog("Argument 2 not a number")
      return
    }
    
    if !gameBoard.isPositionValid(x, y) {
      NSLog("Position not valid")
      return
    }
    
    player.movePlayer(x, y, gameBoard: gameBoard)
  }
}
