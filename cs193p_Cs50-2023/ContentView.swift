//
//  ContentView.swift
//  cs193p_Cs50-2023
//
//  Created by Karan on 08/02/24.
//

import SwiftUI

struct ContentView: View {
    let emojis: [String] = ["⚔️", "🛡️", "🪖", "🏹"]
    
    var body: some View {
        HStack{
            ForEach(emojis.indices, id: \.self) { index in
                CardView(content: emojis[index])
            }
        }
        .padding()
    }
    
}

struct CardView : View {
    @State var content: String
    @State var isFaceUp = true
    
    var body: some View {
        ZStack {
            let base = RoundedRectangle(cornerSize: CGSize(width: 20, height: 10))
            if isFaceUp {
                base.fill(.white)
                base.strokeBorder(lineWidth: 2)
                Text(content).font(.largeTitle)
            } else {
                base.fill(.green)
            }
            
        }
        .onTapGesture {
            isFaceUp.toggle()
//            var generator = SystemRandomNumberGenerator()
//            let emojis = ["⚔️", "🛡️", "🪖", "🏹", "🚀", "🔫", "💣", "🚁", "🛰️", "🚢", "🚀", "🚁", "🛰️", "🛸"]
//            if let randomEmoji = emojis.randomElement(using: &generator) {
//                self.content = randomEmoji
//            } else {
//                self.content = content
//            }
        }
    }
}

#Preview {
    ContentView()
}
