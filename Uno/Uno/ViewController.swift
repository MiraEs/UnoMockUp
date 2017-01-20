//
//  ViewController.swift
//  Uno
//
//  Created by Ilmira Estil on 1/17/17.
//  Copyright © 2017 C4Q. All rights reserved.
//

//CARD SET = Lists IDs -> Card
//CARD DECK = Lists IDS -> Amount of each card set

import UIKit

class ViewController: UIViewController {
    
    let deck = Deck()
    var currentDeck = [Int:Int]()
    var set = [Int:Card]()
    var hand = [Int]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //1. new deck (needs to come first)
        currentDeck = deck.createDeck()
        //dump("DECK >>>> \(newDeck)")
        
        //2. create set (permanent throughout whole game)
        set = deck.cardSet
        //dump("SET >>>> \(set)")
        //dump(set[1]) //BLUE 0 - ID: 1 - AMOUNT: 1
        
        
        //3. create new hand from deck
        newHand()
        
        //access one card
        //dump(set[hand[1]]?.color)
    }
    
    func newGame() {
        currentDeck = deck.createDeck()
        newHand()
    }
    
    func newHand() -> [Int] {
            for _ in 1...7 {
                let cardID = Int(arc4random_uniform(UInt32(set.count)) + 1)
                
                if currentDeck[cardID]! > 0 {
                    hand.append(cardID)
                    currentDeck[cardID]! -= 1
                }
            
        }
        dump("players and hands >>>> \(hand)")
        return hand
    }
    
    
    
    
    
}

