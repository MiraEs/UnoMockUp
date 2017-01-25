//
//  ViewController2.swift
//  Uno
//
//  Created by Madushani Lekam Wasam Liyanage on 1/25/17.
//  Copyright © 2017 C4Q. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

    var cardSet: [Int:Card] = [:]
    var cardDeck: [Int:Int] = [:]
    var discardedPile: [Int:Int] = [:]
    var discardedPileArr: [Int] = []
    
    var playerOneHand: [Int:Int] = [:]
    var playerTwoHand: [Int:Int] = [:]
    var playerThreeHand: [Int:Int] = [:]
    var playerFourHand: [Int:Int] = [:]
    
    let deck = Deck()
    var currentDeck = [Int:Int]()
    var set = [Int:Card]()
    
    var totalPlayers = [Int:Any]()
    
    //is there a way to refactor this?
    var playerOne = [Int: Any]()
    var playerTwo = [Int: Any]()
    var playerThree = [Int: Any]()
    var playerFour = [Int: Any]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let myDeck = Deck()
        myDeck.createDeck()
        
        cardDeck = myDeck.cardDeck
        cardSet = myDeck.cardSet
        discardedPile = myDeck.discradedPile
        //print(discardedPile)
        
        initialGameStart()
        
        print(playerOneHand)
        print(playerTwoHand)
        print(playerThreeHand)
        print(playerFourHand)
        print(cardDeck)
        print(discardedPile)
    }
    
    //Initial Game Start - Populate All Player Hands
    
    private func initialGameStart() {
        playerOneHand = populateInitialPlayerHand()
        playerTwoHand = populateInitialPlayerHand()
        playerThreeHand = populateInitialPlayerHand()
        playerFourHand = populateInitialPlayerHand()
        
        generateDealCard()
    }
    
    //Draw a new card
    
    private func drawCard(playerHand: [Int:Int]) -> [Int:Int] {
        
        var returnHand = playerHand
        var generatedId = randomCardIdGenerator()
        
        while cardDeck[generatedId] == 0 {
            generatedId = randomCardIdGenerator()
        }
        if returnHand[generatedId] != nil {
            returnHand[generatedId]! += 1
            cardDeck[generatedId]! -= 1
            //            discardedPile[generatedId]! += 1
            //            discardedPileArr.append(generatedId)
        }
        else {
            returnHand[generatedId] = 1
            cardDeck[generatedId]! -= 1
            //            discardedPile[generatedId]! += 1
            //            discardedPileArr.append(generatedId)
        }
        return returnHand
    }
    
    //Populate an Initial Player Hand - 7 Cards
    //    func numOfPlayers(_ sender: Int) {
    //        for i in 1...sender {
    //
    //        }
    //
    //    }
    
    private func populateInitialPlayerHand() -> [Int:Int] {
        
        var returnHand: [Int:Int] = [:]
        
        for _ in 1...7 {
            var generatedId = randomCardIdGenerator()
            
            while cardDeck[generatedId] == 0 {
                generatedId = randomCardIdGenerator()
            }
            if returnHand[generatedId] != nil {
                returnHand[generatedId]! += 1
                cardDeck[generatedId]! -= 1
                //                discardedPile[generatedId]! += 1
                //                discardedPileArr.append(generatedId)
            }
            else {
                returnHand[generatedId] = 1
                cardDeck[generatedId]! -= 1
                //                discardedPile[generatedId]! += 1
                //                discardedPileArr.append(generatedId)
            }
        }
        return returnHand
    }
    
    //Generate the Deal Card on the Table
    
    func generateDealCard() {
        
        var generatedId = randomCardIdGenerator()
        
        while cardDeck[generatedId] == 0 {
            generatedId = randomCardIdGenerator()
        }
        discardedPile[generatedId]! += 1
        discardedPileArr.append(generatedId)
    }
    
    func chooseUserHand()  {
        
    }
}

//Generating a Random Card Id - 0 to 53

func randomCardIdGenerator() -> Int {
    
    return Int(arc4random_uniform(54))
    
}
