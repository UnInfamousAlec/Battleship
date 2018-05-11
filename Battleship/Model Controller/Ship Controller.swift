//
//  Ship Controller.swift
//  Battleship
//
//  Created by Brock Boyington on 5/10/18.
//  Copyright © 2018 UnInfamous Games. All rights reserved.
//

import Foundation
import CoreGraphics

var tiles = [Tile]()
var remainingTiles = 0
func startGame() {
    setupTiles()
}

func setupTiles() {
    for n in 0..<numberOfShips {
        let row = randomIntUpTo(n: numberOfRows)
        let col = randomIntUpTo(n: numberOfCols)
        if !tileHasShip(row: row, col: col) {
            setTileAt(tile: Tile.Hidden(true), row: row, col: col)
        }
    }
}

func setTileAt(tile: Tile, row: Int, col: Int) {
    tiles[(row * numberOfCols) + col] = tile
}

func tileAt(row: Int, col: Int) -> Tile {
    return tiles[(row * numberOfCols) + col]
}

func tileHasShip(row: Int, col: Int) -> Bool {
    switch tileAt(row: row, col: col) {
    case let .Hidden(hasShip):
        return hasShip
    case .Visible:
        return false
    }
}

func actOnTileAt(row: Int, col: Int) {
    switch tileAt(row: row, col: col) {
    case let .Hidden(hasShip):
        if hasShip == true {
            print("Pick another tile")
        } else {
            return remainingTiles -= 1
        }; else  {
            uncoverTileAt(row: row, col: col)
            if remainingTiles == 0 {
                print("You Lost")
            }
        }
    case .Visible:
        return ()
    }
}

func uncoverTileAt(row: Int, col: Int) {
    remainingTiles -= 1
//    notifyView(name: "UncoverTileAtNotification", info: ["Row": row, "Col": col])
//    setTileAt(tile: Tile.Visible, row: row, col: col)
//    if numAdjacentBombs > 0 {
//        notifyView(name: "SetNumberForTileAtNotification", info: ["Row": row, "Col": col, "Num": numAdjacentBombs])
//    } else {
//        performFuncOnCellsAdjacentTo(gridFunc: uncoverIfHiddenAt, row: row, col: col)
//    }
}

//func performFuncOnCellsAdjacentTo(gridFunc: @escaping (Int, Int) -> (), row: Int, col: Int) {
//    func boundedGridFunc(r: Int, c: Int) {
//        if r >= 0 && r < numberOfRows && c >= 0 && c < numberOfCols {
//            return gridFunc(r, c)
//        }
//    }
//    boundedGridFunc(r: row - 1, c: col - 1)
//    boundedGridFunc(r: row - 1, c: col)
//    boundedGridFunc(r: row - 1, c: col + 1)
//    boundedGridFunc(r: row, c: col - 1)
//    boundedGridFunc(r: row, c: col + 1)
//    boundedGridFunc(r: row + 1, c: col - 1)
//    boundedGridFunc(r: row + 1, c: col)
//    boundedGridFunc(r: row + 1, c: col + 1)
//}

func uncoverIfHiddenAt(row: Int, col: Int) {
    switch tileAt(row: row, col: col) {
    case Tile.Hidden(_):
        return uncoverTileAt(row: row, col: col)
    case Tile.Visible:
        return ()
    }
}

func markFlagAt(row: Int, col: Int) {
    switch tileAt(row: row, col: col) {
    case let .Hidden(hasShip): break
//        if isFlagged {
//            numberOfShipsLeft++
//            notifyView(name: "UnflagTileAtNotification", info: ["Row": row, "Col": col])
//            setTileAt(Tile.Hidden(hasShip, false), row: row, col: col)
//        } else {
//            numberOfShipsLeft--
//            notifyView(name: "FlagTileAtNotification", info: ["Row": row, "Col": col])
//            setTileAt(tile: Tile.Hidden(hasBomb, true), row: row, col: col)
//        }
    case .Visible:
        return ()
    }
}

func revealAll() {
    for row in 0..<numberOfRows {
        for col in 0..<numberOfCols {
            if tileHasShip(row: row, col: col) {
//                notifyView(name: "DrawBombAtNotification", info: ["Row": row, "Col": col])
            }
        }
    }
}
