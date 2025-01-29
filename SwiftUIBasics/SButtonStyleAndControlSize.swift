//
//  SButtonStyleAndControlSize.swift
//  SwiftUIBasics
//
//  Created by Ethan John Paguntalan on 1/29/25.
//

import SwiftUI

struct SButtonStyleAndControlSize: View {
    
    var body: some View {
        
        VStack {
            
            Button {
                
            } label: {
                Text("Button")
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
            }
//            .buttonBorderShape(.capsule)
            .buttonStyle(.bordered)
            .controlSize(.large)
            
            Button {
                
            } label: {
                Text("Button")
            }
            .buttonStyle(.borderedProminent)
            .controlSize(.mini)
            
            Button {
                
            } label: {
                Text("Button")
            }
            .buttonStyle(.plain)
        
            
            //DEFAULT (.borderless)
            Button {
                
            } label: {
                Text("Button")
            }

        }
        .padding()
        
    }
}

#Preview {
    SButtonStyleAndControlSize()
}
