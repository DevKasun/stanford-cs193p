//
//  CardView.swift
//  stanford-cs193p
//
//  Created by Kasun Lakshitha on 2024-09-03.
//

import SwiftUI

struct CardView: View {
    let cardBgColor: Color
    
    // since we specify the true or false variable knows it's Bool we can remove it
    // let noBgColor: Bool = true
    @State var noBgColor = true
    
    var body: some View {
        let cardBase = RoundedRectangle(cornerRadius: 25.0)
        
        // Views are immutable
        ZStack(alignment: .center) {
            if noBgColor {
                cardBase.fill(cardBgColor)
                cardBase.strokeBorder(lineWidth: 5.0)
                Text("☢️").font(.largeTitle)
            } else {
                cardBase.fill(.white)
                cardBase.strokeBorder(lineWidth: 5.0)
            }
        }
        .onTapGesture {
            // both are same
            // noBgColor = !noBgColor
            noBgColor.toggle()
        }
    }
}
