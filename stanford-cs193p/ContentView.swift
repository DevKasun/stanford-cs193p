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
        CardData(content: "⚡️", bgColor: .red, noBgColor: true),
        CardData(content: "🌟", bgColor: .blue, noBgColor: true),
        CardData(content: "🚀", bgColor: .green, noBgColor: true),
        CardData(content: "🌈", bgColor: .purple, noBgColor: true)
    ]
    
    @State var count = 2;
    
    var body: some View {
        VStack {
            ForEach(0..<min(count, cardData.count), id: \.self) { index in
                CardView(content: cardData[index].content, cardBgColor: cardData[index].bgColor, noBgColor: cardData[index].noBgColor)
            }
            Button("Add card") {
                if(count < cardData.count) {
                    count += 1
                }
            }
                .padding()
            Button("Remove card") {
                if(0 < cardData.count) {
                    count -= 1
                }
            }
                .padding()
        }
        .foregroundColor(Color.green)
        .padding()
    }
}

#Preview {
    ContentView()
}
