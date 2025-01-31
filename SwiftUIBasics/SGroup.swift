//
//  SGroup.swift
//  SwiftUIBasics
//
//  Created by Ethan John Paguntalan on 1/31/25.
//

import SwiftUI

struct SGroup: View {
    var body: some View {
        VStack(spacing: 40) {
            
            Text("Hello, World!")
            Group {
                Text("Hello, World!")
                Text("Hello, World!")
            }
            .foregroundStyle(.blue)
        }
        .foregroundStyle(.red)

    }
}

#Preview {
    SGroup()
}
