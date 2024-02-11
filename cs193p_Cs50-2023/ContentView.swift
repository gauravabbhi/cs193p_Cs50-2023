//
//  ContentView.swift
//  cs193p_Cs50-2023
//
//  Created by Karan on 08/02/24.
//

import SwiftUI

struct ContentView: View {
    let emojis: [String] = ["⚔️", "🛡️", "🪖", "🏹", "🚀", "🔫", "💣", "🚁", "🛰️", "🚢", "🚀", "🚁", "🛰️", "🛸"]
    @State var cardCount: Int = 4
    
    var body: some View {
        VStack {
            cards
            cardCountAdjuster
        }
    }
    
    var cardCountAdjuster: some View {
        HStack() {
            cardRemover
            Spacer()
            cardAdder
        }
        .padding()
    }
    
    var cards: some View {
        HStack{
            ForEach(0..<cardCount, id: \.self) { index in
                CardView(content: emojis[index])
            }
        }
        .foregroundColor(.orange)
        .padding()
    }
    
    func cardCountAdjuster(by offset: Int, symbol: String) -> some View {
        Button(action: {
                cardCount +=  offset
            
        }, label: {
            Image(systemName: symbol)
        })
        .disabled(cardCount + offset < 1 || cardCount + offset > emojis.count)
        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
        .onChange(of: cardCount) { oldvalue, newValue in
            print("cardcount", cardCount)
            print("offset", offset)
        }
    }
    
    var cardRemover: some View {
        return cardCountAdjuster(by: -1, symbol: "minus.square")
    }
    
    var cardAdder: some View {
        return cardCountAdjuster(by: 1, symbol: "plus.square")
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
        }
    }
}

#Preview {
    ContentView()
}
