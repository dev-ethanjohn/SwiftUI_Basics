//
//  SColors.swift
//  SwiftUIBasics
//
//  Created by Ethan John Paguntalan on 1/27/25.
//

import SwiftUI

struct SColors: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
//            .fill(Color.red.opacity(0.2))
            .fill(
//                Color.primary //Good for dark/light mode
//                Color(.secondarySystemBackground) // for more subtle gray
                Color("CustomColor")
            )
            .frame(width: 300, height: 200)
            .shadow(color: Color("CustomColor").opacity(0.9), radius: 2, x: 0, y: 4)
    }
}

#Preview {
    SColors()
        .preferredColorScheme(.light)
}
