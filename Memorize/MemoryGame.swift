//
//  MemoryGame.swift
//  Memorize
//
//  Created by Andy Agus on 11/24/20.
//  Copyright © 2020 andyagus. All rights reserved.
//

import Foundation

struct MemoryGame<CardContent>{
    // needs to initialize, but doesn't know how many cards are in the game
    var cards: Array<Card>
    
    func choose(card: Card){
        print("card chosen: \(card)")
    }
    
    init(numberOfPairsOfCards: Int, cardContentFactory: (Int) -> CardContent){
        
        cards = Array<Card>()
        for pairIndex in 0..<numberOfPairsOfCards {
            var content = cardContentFactory(pairIndex)
            cards.append(Card(isFaceUp: false, isMatched: false, content: content))
            cards.append(Card(isFaceUp: false, isMatched: false, content: content))
        }
    }
    
    struct Card{
        var isFaceUp:Bool
        var isMatched:Bool
        var content: CardContent
    }
    
}
