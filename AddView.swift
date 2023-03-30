//
//  AddView.swift
//  Flipper
//
//  Created by Brian Cheng on 3/21/23.
//

import SwiftUI

//struct AddView: View {
//
//    @State private var selectedButton: TransactionType?
//
//    var body: some View {
//        VStack(alignment: .leading, spacing: 20) {
//            Text("New Transaction")
//                .font(.title)
//                .fontWeight(.bold)
//                .padding(.horizontal)
//            VStack(spacing: 20) {
//                TransactionButton(type: .buy, selectedType: $selectedButton)
//                TransactionButton(type: .sell, selectedType: $selectedButton)
//                TransactionButton(type: .trade, selectedType: $selectedButton)
//            }
//            .padding(.horizontal)
//        }
//    }
//}
struct AddView: View {
    
    @State private var selectedType: TransactionType?
    @State private var isNextPagePresented = false
    
    var body: some View {
        NavigationView {
            VStack {
                Text("New Transaction")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Spacer()
                
                VStack(spacing: 20) {
                    TransactionButton(type: .buy, selectedType: $selectedType)
                    TransactionButton(type: .sell, selectedType: $selectedType)
                    TransactionButton(type: .trade, selectedType: $selectedType)
                }
                .padding()
                
                Spacer()
                
                NavigationLink(destination: AddCardsView(selectedType: selectedType), isActive: $isNextPagePresented) {
                    EmptyView()
                }
                .hidden()
                
                Button(action: {
                    self.isNextPagePresented = true
                }) {
                    Text("Next")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(10)
                        .padding(.horizontal)
                }
                .disabled(selectedType == nil)
                .padding(.bottom, 20)
                .padding(.trailing, 20)
                .frame(alignment: .bottomTrailing)
            }
            .navigationBarTitle("")
            .navigationBarHidden(true)
        }
    }
}

struct AddCardsView: View {
    
    let selectedType: TransactionType?
    
    var body: some View {
        VStack {
            Text("Add cards to \(selectedType?.rawValue.capitalized ?? "")")
                .font(.largeTitle)
                .fontWeight(.bold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.top, 50)
            
            Spacer()
            
            switch selectedType {
            case .buy:
                EmptyCardsView()
            case .sell:
                EmptyCardsView()
            case .trade:
                EmptyCardsView()
            case .none:
                EmptyView()
            }
            
            Spacer()
        }
    }
}

