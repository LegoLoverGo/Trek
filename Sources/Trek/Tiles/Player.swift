import Foundation

class Player: Tile {
  override func getLabel() -> String {
    return "P"
  }
  
  func movePlayer(_ x: Int, _ y: Int, gameBoard: GameBoard) {
    if !gameBoard.isPositionValid(x, y) {
      return
    }
    
    if gameBoard.getTile(x, y).getLabel() != " " {
      NSLog("Target location not empty")
      return
    }
    
    let oldX = self.x
    let oldY = self.y
    gameBoard.setTile(x, y, tile: self)
    self.x = x
    self.y = y
    
    gameBoard.setTile(oldX, oldY,
                      tile: Tile(oldX, oldY))
  }
}
