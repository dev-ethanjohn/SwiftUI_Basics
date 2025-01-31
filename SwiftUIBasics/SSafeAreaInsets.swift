//
//  SSafeAreaInsets.swift
//  SwiftUIBasics
//
//  Created by Ethan John Paguntalan on 1/31/25.
//

import SwiftUI

struct SSafeAreaInsets: View {
    var body: some View {
        NavigationStack {
            List(1..<10) {_ in
                Rectangle()
                    .frame(height: 300)
                
            }
            .safeAreaInset(edge: .bottom, alignment: .trailing, content: {
                Circle()
                    .frame(width: 100, height: 100)
            })
            .navigationTitle("Safe area insets")
        }
    }
}

#Preview {
    SSafeAreaInsets()
}
