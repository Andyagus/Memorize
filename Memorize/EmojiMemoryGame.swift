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
        
    
    //The array needs you to put the struct inside of <> and we need to define the struct with a specific value, so we are adding string within it thats why we see <<>>
    // MARK: -Access to the model
    var cards: Array<MemoryGame<String>.Card>{
        
        //cards is an array in the memory game model
        return model.cards
    }
    
    
    
    //MARK: - Intent(s)
    //the intents allow to tell emoji memory game what it should do to the model
    //Hi Views, here's what you can do to change the model
    //Choose a card that I intended
    
    func choose(card: MemoryGame<String>.Card){
        //the choose function is coming from the model var/struct
        model.choose(card: card)
    }
    
    

}
