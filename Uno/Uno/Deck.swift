//
//  Card.swift
//  Uno
//
//  Created by Ilmira Estil on 1/17/17.
//  Copyright © 2017 C4Q. All rights reserved.
//

import Foundation

class Card {

}

class Deck {
    let number = [0,1,2,3,4,5,6,7,8,9]
    let color = ["blue", "green", "red", "yellow"]
    let type = ["number", "reverse", "drawTwo", "wildCard", "wildCardDrawFour"]
    
    let blueStack = 19
    
    static func createDeck() {
        var stack = [Deck]()
        
    }
    
}


/*
 var deck = [
 ["blue": 0, amount: 2] //color: num
 ["blue": 1]
 ["blue": 2]
 ["blue": 3]
 ["blue": reverse]
 ["blue": drawTwo]
 ]
 
 */
