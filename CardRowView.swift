//
//  CardGridView.swift
//  Flipper
//
//  Created by Brian Cheng on 3/21/23.
//

import Foundation
import SwiftUI

struct CardRow: View {
    let card: Card
    
    var body: some View {
        VStack {
            Image(card.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 200)
            Text(card.name)
                .font(.headline)
        }
        .padding(10)
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 5)
    }
}
