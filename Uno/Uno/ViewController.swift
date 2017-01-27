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
    var set = [Int:Card]()
    
    var stackPile = [Int: Int]()
    var currentDeck = [Int:Int]()
    lazy var totalPlayers = [Int:Any]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        deck.createDeck()
        //1. new deck (needs to come first)
        currentDeck = deck.cardDeck
        //dump("DECK >>>> \(newDeck)")
        
        //2. create set (permanent throughout whole game)
        set = deck.cardSet
        //dump("SET >>>> \(set)")
        //dump(set[1]) //BLUE 0 - ID: 1 - AMOUNT: 1
        
        
        //3. create new hand from deck
        //newHand()
        
        //access one card
        //dump(set[hand[1]]?.color)
        
        //4. setting new game if new game button hit
        //newGame()
        numOfplayers(2)
        
        //checking currentDeck update after dealt hands
        //dump(currentDeck.sorted(by: { $0.0 < $1.0}))
        dump("New game 2 players >>> \(totalPlayers)")
        
        //prep - who goes first
        whoseFirst()
        
        test()
        
    }
    
    //MARK: - Testing
    func test() {
        dump("Mock pick card from hand >>> \(totalPlayers[1])")
        guard let playerOne = totalPlayers[1] as? [Int] else { return }
        for card in playerOne {
            //dump("Card id \(card)")
            //dump("Card property \(set[card]?.color)")
            dump("test gameplay \(playTest(card))")
        }
        
        
    }
    
    func playTest(_ cardID: Int, _ stackCardID: Int = 35) {
        switch true {
        case set[cardID]?.color == set[stackCardID]?.color:
            print("player card matches stack card")
        default:
            print("Not the same")
        }
    }
    
    
    /************/
    
    //MARK: - Setup game
    
    func newGame() {
        currentDeck = deck.cardDeck
        numOfplayers(2)
    }
    
    func newHand() -> [Int] {
        var hand = [Int]()
        for _ in 1...7 {
            let cardID = Int(arc4random_uniform(UInt32(set.count)) + 1)
            
            if currentDeck[cardID]! > 0 {
                hand.append(cardID)
                currentDeck[cardID]! -= 1
            }
        }
        //dump("players and hands >>>> \(hand)")
        return hand
    }
    
    func numOfplayers(_ players: Int) {
        for num in 1...players {
            totalPlayers[num] = self.newHand()
        }
    }
    
    //MARK: - Gameplay
    
    func whoseFirst() {
        let goesFirst = Int(arc4random_uniform(UInt32(totalPlayers.count)) + 1)
        print("Player \(goesFirst) goes first")
    }
    
    /*
     func playedCard(_ player: Int, _ playerCardID: Int, _ stackCardID: Int) {
     
     }
     */
    
    /* conditions to consider */
    /*
     >> can only place card down this color if...
     
     > number smaller
     > same color
     >> special placements
     > stack same number && same color
     > stack same number but diff color
     
     >> changes on board
     > add card to "stack pile"
     > take out card from each hand (dictionary value change)
     */
    
    
    //slkdfnskdlfnskdnf
    
    
}
