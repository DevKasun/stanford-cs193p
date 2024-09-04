//
//  ContentView.swift
//  stanford-cs193p
//
//  Created by Kasun Lakshitha on 2024-09-03.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        VStack() {
//            Image(systemName: "globe") // creating of struct, an image struct
//                .imageScale(.large)
//            Text("Hello, CS193p") // creating of struct, a text struct
//                .padding()
//        }
//        .foregroundColor(Color.green)
//        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
//        .imageScale(.large)
        // if we add view modifiers to the Vstack view it applys to the child views
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
