//
//  ViewController.swift
//  Uno
//
//  Created by Ilmira Estil on 1/17/17.
//  Copyright © 2017 C4Q. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
        let myDeck = Deck()
        let deck = myDeck.createDeck()
        let set = myDeck.cardSet
        print(set)
        
    }


}

