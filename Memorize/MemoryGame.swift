//
//  MemoryGame.swift
//  Memorize
//
//  Created by Andy Agus on 11/18/20.
//  Copyright © 2020 andyagus. All rights reserved.
//

import Foundation

struct MemoryGame<CardContent>{
    var cards: Array<Card>
    
    func choose(card: Card) {
        print("card chosen: \(card)")
    }
    
    struct Card{
        var isFaceUp: Bool
        var isMatched: Bool
        var content: CardContent
    }
}

