//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Andy Agus on 11/24/20.
//  Copyright © 2020 andyagus. All rights reserved.
//

import SwiftUI

class EmojiMemoryGame{
    private(set) var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()

    static func createMemoryGame() -> MemoryGame<String> {
        var emojis = ["👻","🎃", "🕷", "🧪", "🕸", "👠", "🎭", "👾", "🍺", "🧞‍♂️", "🐲", "📸", "🛀🏽"]
        //shuffle emoji array so they are randomly chosen
        emojis.shuffle()
        return MemoryGame<String>(numberOfPairsOfCards: Int.random(in: 1...5), cardContentFactory: { pairIndex in
            return emojis[pairIndex]
        })
    }
    // MARK: -Access to the model
    var cards: Array<MemoryGame<String>.Card>{
        return model.cards
    }
    
    
    
    //MARK: - Intent(s)
   
    
    func choose(card: MemoryGame<String>.Card){
        //the choose function is coming from the model var/struct
        model.choose(card: card)
    }
    
    

}
