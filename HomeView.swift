//
//  HomeView.swift
//  Flipper
//
//  Created by Brian Cheng on 3/21/23.
//

import SwiftUI

struct HomeView: View {
    let userName = "John Doe"
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("Welcome back")
                .font(.title2)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            Text(userName)
                .font(.largeTitle)
                .fontWeight(.bold)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            Spacer()
        }
        .padding()
        .navigationTitle("Home")
    }
}
