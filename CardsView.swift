//
//  CardsView.swift
//  Flipper
//
//  Created by Brian Cheng on 3/21/23.
//

import Foundation
import SwiftUI

struct CardsView: View {
    let cards = [
        Card(id: 1, name: "Pikachu", image: "pikachu"),
        Card(id: 2, name: "Charmander", image: "charmander"),
        Card(id: 3, name: "Bulbasaur", image: "bulbasaur"),
        Card(id: 4,name: "Squirtle", image: "squirtle"),
        Card(id: 5, name: "Eevee", image: "eevee")
    ]
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 20) {
                    ForEach(cards) { card in
                        NavigationLink(destination: CardDetail(card: card)) {
                            CardRow(card: card)
                        }
                    }
                }
                .padding(.horizontal, 20)
                .padding(.vertical, 10)
            }
            .navigationTitle("Trading Cards")
        }
    }
}







