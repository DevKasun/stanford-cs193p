//
//  CardView.swift
//  stanford-cs193p
//
//  Created by Kasun Lakshitha on 2024-09-03.
//

import SwiftUI

struct CardView: View {
    let cardBgColor: Color
    var body: some View {
        ZStack(alignment: .center) {
            RoundedRectangle(cornerRadius: 25.0) // this works as the background color
                .foregroundColor(cardBgColor)
            RoundedRectangle(cornerRadius: 25.0)
                .strokeBorder(lineWidth: 5.0)
            Text("☢️").font(.largeTitle)
        }
    }
}
