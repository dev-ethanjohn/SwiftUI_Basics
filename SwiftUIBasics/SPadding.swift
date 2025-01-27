//
//  SPadding.swift
//  SwiftUIBasics
//
//  Created by Ethan John Paguntalan on 1/27/25.
//

import SwiftUI

struct SPadding: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Hello, World!")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(.orange)
                .padding(.leading)
            Text("This is a fescription. I know I am weird, I am unemployed and I am a failure. HUHUHU")
                .multilineTextAlignment(.leading)
        }
        .padding()
        .padding(.vertical)
        .background(
            Color.pink
                .shadow(color: Color.black.opacity(0.4), radius: 2, y: 4)
        )
        .padding(.horizontal)
       
    }
}

#Preview {
    SPadding()
}
