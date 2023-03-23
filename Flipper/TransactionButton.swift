//
//  TransactionButton.swift
//  Flipper
//
//  Created by Brian Cheng on 3/21/23.
//

import Foundation
import SwiftUI

struct TransactionButton: View {
    
    let type: TransactionType
    @Binding var selectedType: TransactionType?
    
    var body: some View {
        Button(action: {
            if selectedType == type {
                // unselect the button
                selectedType = nil
            } else {
                // select the button
                selectedType = type
            }
        }) {
            HStack {
                Text(type.rawValue.capitalized)
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.trailing, 20)
                    .foregroundColor(selectedType == type ? .green : .black)
                
                Image(systemName: selectedType == type ? "checkmark.circle.fill" : "circle")
                    .foregroundColor(selectedType == type ? .green : .gray)
                    .font(.system(size: 22))
                    .frame(width: 20, height: 20)
                    .padding(.trailing)
                    .alignmentGuide(.trailing, computeValue: { d in
                        d[HorizontalAlignment.trailing]
                    })
            }
            .frame(maxWidth: UIScreen.main.bounds.width * 0.8)
            .padding(20)
            .background(Color.white)
            .cornerRadius(10)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(lineWidth: 2)
                    .foregroundColor(selectedType == type ? .green : Color.gray.opacity(0.5))
            )
        }
    }
}



enum TransactionType: String {
    case buy
    case sell
    case trade
}

