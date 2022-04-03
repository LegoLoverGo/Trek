import Foundation

class Command {
  func getLabel() -> String {
    return "base"
  }
  
  func run(_ game: Game, args: [String]) {
    NSLog("Please enter a valid command")
  }
}
