//
//  ContentView.swift
//  cs193p_Cs50-2023
//
//  Created by Karan on 08/02/24.
//

import SwiftUI

struct ContentView: View {
   @State var emojis: [String] = ["🐶", "🐱", "🐭", "🐹", "🐰", "🦊", "🐻", "🐼", "🐨", "🐯", "🦁", "🐮", "🐷", "🐸", "🐙", "🐵", "🐔", "🐧", "🐦", "🐤", "🐣", "🐥", "🦆", "🦢", "🦉", "🦚", "🦜", "🐍", "🐢", "🦎", "🦖", "🦕", "🐬", "🐳", "🐋", "🦈", "🐊", "🐅", "🐆", "🦓", "🦌", "🦏", "🐘", "🦍", "🦒", "🐪", "🐫", "🦘", "🐃", "🐄", "🐎", "🐖", "🐏", "🐑", "🦙", "🐐", "🦌", "🐕", "🦮", "🐩", "🐈", "🐓", "🦃", "🦚", "🦜", "🦢", "🦩", "🕊️", "🦤", "🦔", "🦗", "🐞", "🐜", "🦟", "🦋", "🐛", "🐝", "🐌", "🐚", "🐠", "🐟", "🐡", "🦈", "🐙", "🐚", "🐬", "🐳", "🐋", "🦀", "🦞", "🦐", "🦑", "🐌", "🐚", "🐢", "🐍", "🦎", "🐊", "🐢", "🦔", "🦓", "🦏", "🐄", "🐖", "🐏", "🐑", "🦙", "🐐", "🦌", "🐕", "🦮", "🐩", "🐈", "🐓", "🦃", "🦚", "🦜", "🦢", "🦩", "🕊️", "🦤", "🦔", "🦗", "🐞", "🐜", "🦟", "🦋", "🐛", "🐝", "🐌", "🦋", "🦗", "🕷️", "🐜", "🐞", "🦗", "🦟", "🐝", "🐛", "🐌", "🦋", "🐞", "🐜", "🕷️", "🕸️", "🐢", "🐍", "🦎", "🐊", "🦕", "🐊", "🦓", "🦔", "🐿️", "🐇", "🦝", "🦨", "🦡", "🐾"]

    @State var cardCount: Int = 16
    
    let halloweenEmojis = ["🎃", "👻", "🦇", "🧙‍♀️", "🧛‍♂️", "🕷️", "🕸️", "🍬", "🍭", "🍫", "👽", "💀", "🧟‍♂️", "🧟‍♀️", "🧞‍♂️", "🕯️", "🔮", "🦴", "🦷", "👹", "👺", "🧝‍♀️", "🧝‍♂️", "🎭", "🦸‍♂️", "🦹‍♀️", "🧚‍♂️", "🧜‍♀️", "🦾", "👁️‍🗨️", "🕳️", "🎭", "🦸‍♂️", "🦹‍♀️", "🧚‍♂️", "🧜‍♀️", "🦾", "👁️‍🗨️", "🕳️", "🔪", "🪓", "🧟‍♂️", "🧟‍♀️", "👻", "🎃", "👺", "👹", "🦇", "🧙‍♀️", "🧛‍♂️", "🕷️", "🕸️", "🍬", "🍭", "🍫", "🎭", "🦸‍♂️", "🦹‍♀️", "🧚‍♂️", "🧜‍♀️", "🦾", "👁️‍🗨️", "🕳️", "💉", "💊", "🦠", "☠️", "🩸", "🪦"]
    
    let vehicleEmojis = ["🚗", "🚕", "🚙", "🚌", "🚎", "🏎️", "🚓", "🚑", "🚒", "🚐", "🚚", "🚛", "🚜", "🛴", "🚲", "🛵", "🏍️", "🛺", "🚄", "🚅", "🚀", "✈️", "🚁", "🛶", "⛵", "🚤", "🛳️", "⚓", "🚢", "🛸", "🚡", "🚠", "🚟", "🚈", "🚂", "🚆", "🚇", "🚊", "🚞", "🚋", "🚝", "🚄", "🚅", "🚆", "🚇", "🚈", "🚉", "🚊", "🚋", "🚍", "🚎", "🚐", "🚑", "🚒", "🚓", "🚔", "🚕", "🚖", "🚗", "🚘", "🚙", "🚚", "🚛", "🚜", "🏎️", "🏍️", "🛵", "🚲", "🛴", "🚏", "🛣️", "🛤️", "🛢️", "⛽", "🚨", "🚥", "🚦", "🚧", "⚓", "⛵", "🚤", "🛳️", "🛥️", "🚢"]
    
    let warEmojis = ["⚔️", "🛡️", "🔫", "💣", "🚁", "🛰️", "🚀", "🛸", "🌐", "🚂", "🚚", "🛴", "🏎️", "🚓", "🚔", "🚒", "🚑", "🛶", "🚤", "⚓", "🛩️", "✈️", "🚁", "🛰️", "🚀", "🌍", "🔥", "💥", "💨", "💔", "☠️", "⚰️"]
    
    let loveEmojis = ["🤣", "🥳", "😍", "🎃", "❤️", "💖", "😘", "💕", "💏", "💑", "🌹", "💌", "💘", "💗", "💓", "💞", "💝", "💟", "😻", "💏", "💋", "🥰", "😊", "😚", "💛", "💙", "💚", "💜", "💗", "💖", "💕", "❣️", "💔", "💓", "💖", "💗", "💙", "💚", "💛", "🧡", "❤️", "💜", "💝", "💞", "💟", "😍", "😘"]

    
    var body: some View {
        VStack {
            Text("Memorize!")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            cardCountAdjuster
            ScrollView{
                cards
            }
            Spacer()
            themeChooser
        }
    }
    
    fileprivate func themeButton(emoji: [String], symbol: String, label: String) -> some View {
        return Button(action: {
            emojis =  emoji
            
        }, label: {
            VStack{
                Image(systemName: symbol)
                Text(label).font(.body)
            }
            .foregroundColor(.black)
            
        })
    }
    
    var themeChooser: some View {
        HStack{
            Group {
                themeButton(emoji: vehicleEmojis.shuffled(), symbol: "car.rear", label: "Vehicle")
                Spacer()
                themeButton(emoji: warEmojis.shuffled(), symbol: "heart.fill",label: "Love")
                Spacer()
                themeButton(emoji: halloweenEmojis.shuffled(), symbol: "car.rear",label: "Halloween")
                Spacer()
                themeButton(emoji: halloweenEmojis.shuffled(), symbol: "car.rear",label: "Halloween")
            }
        }
        .padding([.horizontal], 40)
        .font(.largeTitle)
    }
    
    var cardCountAdjuster: some View {
        HStack() {
            cardRemover
            Spacer()
            cardAdder
        }
        .padding([.horizontal], 100)
    }
    
    var cards: some View {
        LazyVGrid(columns: [GridItem(.adaptive(minimum: 80))], content: {
            ForEach(emojis.prefix(cardCount), id: \.self) { emoji in
                CardView(content: emoji)
                    .aspectRatio(2/3, contentMode: .fit)
            }
        })
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
            let base = RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
            Group {
                base.fill(.white)
                base.strokeBorder(lineWidth: 2)
                Text(content).font(.largeTitle)
            }
            .opacity(isFaceUp ? 1 : 0)
            base.fill(.green).opacity(isFaceUp ? 0 : 1)
            
        }
        .onTapGesture {
            isFaceUp.toggle()
        }
    }
}

#Preview {
    ContentView()
}
