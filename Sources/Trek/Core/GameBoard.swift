import Foundation

class GameBoard {
  let width: Int
  let height: Int
  private(set) var tiles: [Tile]
  
  let player: Player
  
  init() {
    width  = 3
    height = 3
    
    tiles = []
    for x in 1...width {
      for y in 1...height {
        tiles.append(Tile(x - 1, y - 1))
      }
    }
    
    player = Player(0, 0)
    setTile(0, 0, tile: player)
  }
  
  private func getTileIndex(_ x: Int, _ y: Int) -> Int {
    return (y * width) + x
  }
  
  func setTile(_ x: Int, _ y: Int, tile: Tile) {
    tiles[getTileIndex(x, y)] = tile
  }
  
  func getTile(_ x: Int, _ y: Int) -> Tile {
    return tiles[getTileIndex(x, y)]
  }
  
  func isPositionValid(_ x: Int, _ y: Int) -> Bool {
    return x < width && y < height
  }
  
  func render() {
    func printf(_ str: String) {
      print(str, terminator: "")
    }
    
    printf("|")
    for _ in 1...width {
      printf("-")
    }
    printf("|\n|")
    
    for y in 0...height - 1 {
      for x in 0...width - 1 {
        printf(tiles[getTileIndex(x, y)].getLabel())
        
        if x == width - 1 {
          printf("|\n|")
        }
      }
    }
    
    for _ in 1...width {
      printf("-")
    }
    printf("|\n")
  }
}
