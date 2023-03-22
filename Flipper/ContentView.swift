//
//  ContentView.swift
//  Flipper
//
//  Created by Brian Cheng on 3/20/23.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 0
    
    var body: some View {
        TabView(selection: $selection) {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                }
                .tag(0)
            AddView()
                .tabItem {
                    Label("Add", systemImage: "plus.square.fill")
                }
                .tag(1)
            CardsView()
                .tabItem {
                    Label("Cards", systemImage: "creditcard.fill")
                }
                .tag(2)
            
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
