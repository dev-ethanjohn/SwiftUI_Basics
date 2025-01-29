//
//  SDarkMode.swift
//  SwiftUIBasics
//
//  Created by Ethan John Paguntalan on 1/29/25.
//

import SwiftUI

struct SDarkMode: View {
    @Environment(\.colorScheme) var colorScheme
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 20) {
                    Text("This text is Primary")
                        .foregroundStyle(.primary)
                    Text("This color is secondary")
                        .foregroundStyle(.secondary)
                    Text("This color is black")
                        .foregroundStyle(.black)
                    Text("This color is white")
                        .foregroundStyle(.white)
                    Text("This color is globally adaptive")
                        .foregroundStyle(Color("AdaptiveColor"))
                    Text("This is color is locally adaptive")
                        .foregroundStyle(colorScheme == .light ? .green : .yellow)
                }
            }
            .navigationTitle("Dark Mode")
        }
    }
}

#Preview {
    SDarkMode()
}
