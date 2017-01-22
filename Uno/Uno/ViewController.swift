//
//  ViewController.swift
//  Uno
//
//  Created by Ilmira Estil on 1/17/17.
//  Copyright © 2017 C4Q. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var cardSet: [Int:Card] = [:]
    var cardDeck: [Int:Int] = [:]
    var discardedPile: [Int:Int] = [:]
    var discardedPileArr: [Int] = []
    
    var playerOneHand: [Int:Int] = [:]
    var playerTwoHand: [Int:Int] = [:]
    var playerThreeHand: [Int:Int] = [:]
    var playerFourHand: [Int:Int] = [:]
    
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
            discardedPile[generatedId]! += 1
            discardedPileArr.append(generatedId)
        }
        else {
            returnHand[generatedId] = 1
            cardDeck[generatedId]! -= 1
            discardedPile[generatedId]! += 1
            discardedPileArr.append(generatedId)
        }
        return returnHand
    }
    
    //Populate an Initial Player Hand - 7 Cards
    
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
                discardedPile[generatedId]! += 1
                discardedPileArr.append(generatedId)
            }
            else {
                returnHand[generatedId] = 1
                cardDeck[generatedId]! -= 1
                discardedPile[generatedId]! += 1
                discardedPileArr.append(generatedId)
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
        discardedPileArr.append(generatedId)
    }

    func chooseUserHand()  {
        
    }
}

//Generating a Random Card Id - 0 to 53

func randomCardIdGenerator() -> Int {
    
    return Int(arc4random_uniform(54))
    
}


