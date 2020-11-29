//
//  ContentView.swift
//  Memorize
//
//  Created by Andy Agus on 11/17/20.
//  Copyright © 2020 andyagus. All rights reserved.
//

//homework,   make them stop being tall and skinny, random number

import SwiftUI

struct ContentView: View {
    var viewModel: EmojiMemoryGame

    var body: some View {
        let fontSize = viewModel.cards.count < 5*2 ? Font.largeTitle : Font.title
        print(viewModel.cards)
        return HStack() {
            return ForEach(viewModel.cards){ card in
                CardView(card: card).onTapGesture {
                    viewModel.choose(card: card)
                }
             }
        }
        .foregroundColor(Color.orange)
        .padding()
        //font is equal to the fontSize variable specified above
        .font(fontSize)
        
    }
    
}

struct CardView: View{
    var card: MemoryGame<String>.Card
    var body: some View{
        return ZStack() {
            if card.isFaceUp{
            
                RoundedRectangle(cornerRadius: 10.0).fill(Color.white).frame(height: 60)
                RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3).frame(height: 60)
                Text(card.content)
            }else{
                RoundedRectangle(cornerRadius: 10.0).fill()
            }
        }
    }
}
























struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: EmojiMemoryGame())
    }
}
