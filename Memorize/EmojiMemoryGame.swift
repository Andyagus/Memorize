//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Andy Agus on 11/24/20.
//  Copyright © 2020 andyagus. All rights reserved.
//

import SwiftUI

class EmojiMemoryGame{
    
    //variable to access the model
    //The type of a var is a struct,a string and a bool are structs
    //Doorway is now wideopen - private makes it only accessible by the emoji memorygame class, but now the views can't see the model through it only the emoji memory game can see the model, but the views cannot.  Adding the word 'set' allows the views to see the model, but only the EmojiMemoryGame can alter the model
    //Iniaitlizing the model through the ViewModel,like the number of pairs and which emojis - requires an init in the model
    private(set) var model: MemoryGame<String> = MemoryGame<String>(cards: numberOfPairsOfCards: 2)
    
    //video doorbells video - the view sees the model through a video feed.  The model is at the doorbell ringing and the view can see who it is…the vars and funcs get let the views see the model in constricted ways…we need the View to see the cards so we'll create an array of emoji memory game cards
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
