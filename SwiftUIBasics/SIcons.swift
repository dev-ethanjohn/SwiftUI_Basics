//
//  SIcons.swift
//  SwiftUIBasics
//
//  Created by Ethan John Paguntalan on 1/27/25.
//

import SwiftUI

struct SIcons: View {
    var body: some View {
        Image(systemName: "heart.fill")
//            .renderingMode(.original)
            .resizable()
            .scaledToFit()
//            .imageScale(.large)
            .foregroundStyle(.orange)
            .frame(width: 100, height: 100)
//            .clipped()
        
        
    }
}

#Preview {
    SIcons()
}
