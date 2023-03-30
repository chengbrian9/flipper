//
//  EmptyCards.swift
//  Flipper
//
//  Created by Brian Cheng on 3/24/23.
//


import Foundation
import SwiftUI
struct EmptyCardsView: View {
    @State private var showCamera = false
    let cards = [
        Card(id: 1, name: "Pikachu", image: "pikachu"),
        Card(id: 2, name: "Charmander", image: "charmander"),
        Card(id: 3, name: "Bulbasaur", image: "bulbasaur"),
        Card(id: 4, name: "Squirtle", image: "squirtle"),
        Card(id: 5, name: "Eevee", image: "eevee")
    ]
    
    let columns = [
        GridItem(.flexible(), spacing: 10),
        GridItem(.flexible(), spacing: 10)
    ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 10) {
                          ForEach(cards, id: \.id) { card in
                              
                          ZStack {
                              Button(action: {self.showCamera = true}) {
                                    Image(systemName: "plus")
                                          .resizable()
                                          .padding(80)
                                          .background(Color.white)
                                          .cornerRadius(10)
                                          .shadow(radius: 2)
                                  }
                                  .sheet(isPresented: $showCamera) {
                                      ImagePicker(sourceType: .camera)
                                  }
                          }
                      }
                .padding(.horizontal, 10)
                .padding(.vertical, 10)
            }
        }
    }
}
