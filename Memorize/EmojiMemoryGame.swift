//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Andy Agus on 11/18/20.
//  Copyright © 2020 andyagus. All rights reserved.
//

import SwiftUI

class EmojiMemoryGame {
    private var model: MemoryGame<String> = MemoryGame<String>(cards: <#T##Array<MemoryGame<String>.Card>#>
    
    
    var cards: Array<MemoryGame<String>.Card>{
        return model.cards
    }
    
    //MARK: -Intent(s)
    
    func choose(card: MemoryGame<String>.Card){
        model.choose(card: card)
    }
    
}
