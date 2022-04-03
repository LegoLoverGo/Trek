import Foundation

class QuitCommand: Command {
  override func getLabel() -> String {
    return "quit"
  }
  
  override func run(_ game: Game, args: [String]) {
    game.running = false
  }
}
