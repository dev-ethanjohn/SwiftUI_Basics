//
//  SAnimations.swift
//  SwiftUIBasics
//
//  Created by Ethan John Paguntalan on 1/28/25.
//

import SwiftUI

struct SAnimations: View {
    @State private var isAnimated: Bool = false
    var body: some View {
        VStack  {
            
            Button("button") {
                //THIS IS BETTER
//                withAnimation(Animation.spring.delay(1)) { // add delay before it animates
                    isAnimated.toggle()
//                }
            }
            
            Spacer()
            RoundedRectangle(cornerRadius: isAnimated ? 20 : 0)
                .fill(isAnimated ? .red : .green)
                .frame(
                    width: isAnimated ? 100 : 300,
                    height: isAnimated ? 100 : 300
                )
                .rotationEffect(.degrees(isAnimated ? 360 : 0))
                .offset(y: isAnimated ? 300 : 0)
                .animation(.spring, value: isAnimated)
              
            Spacer()
        }
    }
}

#Preview {
    SAnimations()
}
