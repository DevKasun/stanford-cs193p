//
//  ContentView.swift
//  stanford-cs193p
//
//  Created by Kasun Lakshitha on 2024-09-03.
//

import SwiftUI


struct CardData: Identifiable {
    let id = UUID()
    let content: String
    let bgColor: Color
    let noBgColor: Bool
}

struct ContentView: View {
    
    let cardData: [CardData] = [
        CardData(content: "⚡️", bgColor: .orange, noBgColor: true),
        CardData(content: "🌟", bgColor: .teal, noBgColor: true),
        CardData(content: "🚀", bgColor: .yellow, noBgColor: true),
        CardData(content: "🌈", bgColor: .mint, noBgColor: true),
        CardData(content: "🍎", bgColor: .red, noBgColor: true),
        CardData(content: "🌺", bgColor: .pink, noBgColor: true),
        CardData(content: "🌴", bgColor: .green, noBgColor: true),
        CardData(content: "🌊", bgColor: .blue, noBgColor: true),
        CardData(content: "🍋", bgColor: .yellow, noBgColor: true),
        CardData(content: "🍇", bgColor: .purple, noBgColor: true),
        CardData(content: "🌙", bgColor: .indigo, noBgColor: true),
        CardData(content: "❄️", bgColor: .cyan, noBgColor: true),
        CardData(content: "🔥", bgColor: .orange, noBgColor: true),
        CardData(content: "💎", bgColor: .blue, noBgColor: true),
        CardData(content: "🌻", bgColor: .yellow, noBgColor: true),
        CardData(content: "🍄", bgColor: .red, noBgColor: true)
    ]
    @State var count = 2;
    
    var body: some View {
        
        ScrollView {
            Cards
        }
        Spacer()
        CardAdjusters
       
    }
    
    func cardCountAdjusters(by offset: Int, symbol: String, iconColor: Color) -> some View {
        Button(action: {
            count += offset
        }, label: {
            Image(systemName: symbol)
        })
        .foregroundColor(iconColor)
        .disabled(
            (offset < 0 && count <= 0) || (offset > 0 && count >= cardData.count)
        )
    }
    
    var Cards: some View {
        LazyVGrid(columns: [GridItem(), GridItem()]) {
            ForEach(0..<min(count, cardData.count), id: \.self) { index in
                CardView(content: cardData[index].content, cardBgColor: cardData[index].bgColor, noBgColor: cardData[index].noBgColor)
                    .aspectRatio(2/3 ,contentMode: .fit)
            }
        }
        .foregroundColor(Color.green)
        .padding()
    }
    
    var CardAdjusters: some View {
        HStack {
            CardAdder
            Spacer()
            CardRemover
            
        }
        .imageScale(.large)
        .font(.title)
        .padding()
    }
    
    var CardRemover: some View {
        cardCountAdjusters(by: -1, symbol: "rectangle.stack.fill.badge.minus", iconColor: .red)
    }
        
    var CardAdder: some View {
        cardCountAdjusters(by: 1, symbol: "rectangle.stack.fill.badge.plus", iconColor: .blue)
    }
    
}

#Preview {
    ContentView()
}
