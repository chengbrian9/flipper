import SwiftUI

struct CardDetail: View {
    let card: Card
    
    var body: some View {
        VStack {
            Image(card.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding()
            Text(card.name)
                .font(.title)
                .padding()
        }
        .navigationTitle(card.name)
    }
}

