//
//  ContentView.swift
//  Memorize
//
//  Created by Andy Agus on 11/17/20.
//  Copyright © 2020 andyagus. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        return HStack() {
             return ForEach(0..<4){ index in
                CardView(isFaceUp:false)
             }
        }
        .foregroundColor(Color.orange)
        .padding()
        .font(Font.largeTitle)
    }
}

struct CardView: View{
    var isFaceUp: Bool
    var body: some View{
        return ZStack() {
            if isFaceUp{
                RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
                RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3)
                Text("👻")
            }else{
                RoundedRectangle(cornerRadius: 10.0).fill()
            }
 
        }
    }
}























struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

