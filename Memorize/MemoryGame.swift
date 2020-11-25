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
        //why do you have to initialize the array if its already been established on top and if I take it away nothing happends…
        cards = Array<Card>()
        for pairIndex in 0..<numberOfPairsOfCards {
            let content = cardContentFactory(pairIndex)
            cards.append(Card(content: content, id: pairIndex*2))
            cards.append(Card(content: content, id: pairIndex*2+1))
            cards.shuffle()
            cards.shuffle()
        }
    }
    
    struct Card: Identifiable{
        var isFaceUp:Bool = true
        var isMatched:Bool = false
        var content: CardContent
        var id: Int
    }
    
}
