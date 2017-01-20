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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
            //1. create set (permanent throughout whole game)
        let set = deck.cardSet
        //dump("SET >>>> \(set)")
        //dump(set[1]) //BLUE 0 - ID: 1 - AMOUNT: 1
        
            //2. create new deck
        var newDeck = deck.createDeck()
        //dump("DECK >>>> \(newDeck)")
        
            //3. create new hand from deck
        var hand = [Int]()
        for _ in 1...7 {
            let cardID = Int(arc4random_uniform(UInt32(newDeck.count)) + 1)
            //dump(cardID)
            //hand.append(cardID)
        }
        
            //checking cards in hand
        
    }
    
    
}

