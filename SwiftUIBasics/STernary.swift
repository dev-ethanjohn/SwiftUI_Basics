//
//  STernary.swift
//  SwiftUIBasics
//
//  Created by Ethan John Paguntalan on 1/28/25.
//

import SwiftUI

struct STernary: View {
    @State private var isStartingState: Bool = false
    var body: some View {
        VStack {
            Button("button") {
                isStartingState.toggle()
            }
            
            Text(isStartingState ? "Start" : "End")
            
            RoundedRectangle(cornerRadius: isStartingState ? 8 : 40)
                .fill(isStartingState ? .red : .blue)
                .frame(
                    width: isStartingState ? 200 : 100,
                    height: isStartingState ? 100 : 200
                )
        }
        
    }
}

#Preview {
    STernary()
}
