import Foundation

class Tile {
  var x: Int;
  var y: Int;
  
  init(_ x: Int, _ y: Int) {
    self.x = x
    self.y = y
  }
  
  func getLabel() -> String {
    return " "
  }
}
