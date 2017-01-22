//
//  Card.swift
//  Uno
//
//  Created by Ilmira Estil on 1/17/17.
//  Copyright © 2017 C4Q. All rights reserved.
//

import Foundation

class Deck {
    let colors: [Color:Int] = [.red : 0, .green : 1, .blue : 2, .yellow : 3]
    let types: [Type] = [.regular, .reverse, .skip, .drawTwo, .wild, .wildDrawFour]
    var cardSet: [Int:Card] = [:]
    var cardDeck: [Int:Int] = [:]
    var discradedPile: [Int:Int] = [:]
    
    func createDeck() {
        
        var counter = 0
        for type in types {
            switch type {
            case .regular:
                for color in colors {
                    for i in 0...9 {
                        let card = Card(id: counter, type: type, color: color.key, value: i)
                        if i == 0 {
                            cardDeck[card.id] = 1
                            cardSet[card.id] = card
                            counter += 1
                        }
                        else {
                            cardDeck[card.id] = 2
                            cardSet[card.id] = card
                            counter += 1
                        }
                    }
                }
            case .reverse, .skip, .drawTwo:
                for color in colors {
                    let card = Card(id: counter, type: type, color: color.key, value: nil)
                    cardDeck[card.id] = 2
                    cardSet[card.id] = card
                    counter += 1
                }
            case .wild, .wildDrawFour:
                let card = Card(id: counter , type: type, color: nil, value: nil)
                cardDeck[card.id] = 4
                cardSet[card.id] = card
                counter += 1
            }
        }
        
        for i in 0...53 {
            discradedPile[i] = 0
        }
    }
    
    
    //    let cardDeck = createDeck()
    //    var sum = 0
    //    for (key,value) in cardDeck {
    //    sum += value
    //    }
    
    
}
