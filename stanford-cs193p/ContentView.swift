//
//  ContentView.swift
//  stanford-cs193p
//
//  Created by Kasun Lakshitha on 2024-09-03.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            CardView(cardBgColor: .blue)
            CardView(cardBgColor: .red)
            CardView(cardBgColor: .orange)
        }
        .foregroundColor(Color.green)
        .padding()
    }
}

#Preview {
    ContentView()
}
