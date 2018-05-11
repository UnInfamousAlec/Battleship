//
//  Ship.swift
//  Battleship
//
//  Created by Brock Boyington on 5/10/18.
//  Copyright © 2018 UnInfamous Games. All rights reserved.
//

import Foundation

let numberOfRows = 1
let numberOfCols = 1
let numberOfShips = 1

enum Tile {
    case Hidden(Bool) // hasShip
    case Visible
}

func randomIntUpTo(n: Int) -> Int {
    return Int(arc4random_uniform(UInt32(n)))
}

class BattleshipGame {
    
    var numberOfShipsLeft = numberOfShips
    var remainingTiles = numberOfRows * numberOfCols - numberOfShips
    var tiles = Array(repeating: Tile.Hidden(false), count: numberOfRows * numberOfCols)
}

//    init() {}



//    func notifyView(name: String, info: Dictionary<String, Int>? = nil) {
//        if let userInfo = info {
//            NotificationCenter.defaultCenter.postNotificationName(name, object: nil, userInfo: userInfo)
//        } else {
//            NotificationCenter.defaultCenter.postNotificationName(name, object: nil)
//        }
//    }

//class Ship {
////    let origin: CGPoint = (x: 0, y: 0)
//    var hit: Bool
//    let location: CGPoint
//    init(location: CGPoint, hit: Bool) {
//        self.hit = hit
//        self.location = location
//    }
//}
//
//class Player {
//    var fireCount = 0
//    var hitCount = 0
//    init(fireCount: Int, hitCount: Int) {
//        self.hitCount = hitCount
//        self.fireCount = fireCount
//    }
//}
//
//class Location {
//    var x: Int
//    var y: Int
//    let loc1: CGPoint
//    let loc2: CGPoint
//    let loc3: CGPoint
//    let loc4: CGPoint
//    let loc5: CGPoint
//    let loc6: CGPoint
//    let loc7: CGPoint
//    let loc8: CGPoint
//    let loc9: CGPoint
//
//    init(x: Int, y: Int, loc1: CGPoint, loc2: CGPoint, loc3: CGPoint, loc4: CGPoint, loc5: CGPoint, loc6: CGPoint, loc7: CGPoint, loc8: CGPoint, loc9: CGPoint) {
//        self.x = x
//        self.y = y
//        self.loc1 = loc1
//        self.loc2 = loc2
//        self.loc3 = loc3
//        self.loc4 = loc4
//        self.loc5 = loc5
//        self.loc6 = loc6
//        self.loc7 = loc7
//        self.loc8 = loc8
//        self.loc9 = loc9
//    }
//
//    let locs = [
//        "loc1" : (x: 0, y: 1),
//        "loc2" : (x: 0, y: 2),
//        "loc3" : (x: 0, y: 3),
//        "loc4" : (x: 1, y: 3),
//        "loc5" : (x: 1, y: 2),
//        "loc6" : (x: 1, y: 1),
//        "loc7" : (x: 2, y: 1),
//        "loc8" : (x: 2, y: 2),
//        "loc9" : (x: 2, y: 3)
//        ]
//}
//
//struct LocationDictionary {
//    let locations: [Location]
//}
