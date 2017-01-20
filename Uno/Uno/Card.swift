//
//  Card.swift
//  Uno
//
//  Created by Madushani Lekam Wasam Liyanage on 1/19/17.
//  Copyright © 2017 C4Q. All rights reserved.
//

import Foundation

enum Type {
    case regular
    case reverse
    case skip
    case drawTwo
    case wild
    case wildDrawFour
}

enum Color {
    case red
    case green
    case blue
    case yellow
}

class Card {
    
    let id: Int
    let type: Type
    let color: Color?
    let value: Int?
    
    init(id: Int, type: Type, color: Color?, value: Int?) {
        self.id = id
        self.type = type
        self.color = color
        self.value = value
    }
    
}
