//
//  PlayerHand.swift
//  Uno
//
//  Created by Madushani Lekam Wasam Liyanage on 1/24/17.
//  Copyright © 2017 C4Q. All rights reserved.
//

import Foundation

//class Dealer: Card {
//    
//    static func populateInitialPlayerHand(_ cardDeck: [Int:Int]) -> [Int:Int] {
//        
//        var returnHand: [Int:Int] = [:]
//        
//        for _ in 1...7 {
//            var generatedId = randomCardIdGenerator()
//            
//            while cardDeck[generatedId] == 0 {
//                generatedId = randomCardIdGenerator()
//            }
//            if returnHand[generatedId] != nil {
//                returnHand[generatedId]! += 1
//                cardDeck[generatedId]! -= 1
//                //                discardedPile[generatedId]! += 1
//                //                discardedPileArr.append(generatedId)
//            }
//            else {
//                returnHand[generatedId] = 1
//                cardDeck[generatedId]! -= 1
//                //                discardedPile[generatedId]! += 1
//                //                discardedPileArr.append(generatedId)
//            }
//        }
//        return returnHand
//    }
//    
//    static func createDeck() {
//        
//    }
//}
