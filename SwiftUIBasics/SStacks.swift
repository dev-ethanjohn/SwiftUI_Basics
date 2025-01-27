//
//  SStacks.swift
//  SwiftUIBasics
//
//  Created by Ethan John Paguntalan on 1/27/25.
//

import SwiftUI

struct SStacks: View {
    var body: some View {
        HStack {
            Rectangle()
                .fill(.red)
                .frame(width: 100, height: 100)
            Rectangle()
                .fill(.orange)
                .frame(width: 100, height: 100)

            Rectangle()
                .fill(.green)
                .frame(width: 100, height: 100)
        }
        
        VStack(spacing: 20) {
            Rectangle()
                .fill(.orange)
                .frame(width: 100, height: 100)

            Rectangle()
                .fill(.green)
                .frame(width: 100, height: 100)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        
        VStack(spacing: 100) {
            
            //using zstack
            ZStack {
                Circle()
                    .frame(width: 100, height: 100)
                Text("1")
                    .font(.headline)
                    .foregroundStyle(.white)
                    .bold()
            }
            
            //using background. this is optimized if just this without more complex layout
            Text("1")
                .font(.headline)
                .foregroundStyle(.white)
                .background(
                    Circle()
                        .frame(width: 100, height: 100)
                )
                .accessibilityLabel("Number one in a circle")
        }
    }
}

#Preview {
    SStacks()
}
