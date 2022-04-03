import Foundation

class Parser {
  static let allCommands: [Command] = [
    MoveCommand(),
    QuitCommand()
  ]
  
  func parseCommand(_ command: String, game: Game) {
    let args = command.components(separatedBy: " ")
    let commandToFind = args[0]
    
    var foundCommand: Command = Command()
    for currentCommand in Parser.allCommands {
      if commandToFind == currentCommand.getLabel() {
        foundCommand = currentCommand
      }
    }
    
    foundCommand.run(game, args: args)
  }
}
