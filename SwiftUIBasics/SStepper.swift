//
//  SStepper.swift
//  SwiftUIBasics
//
//  Created by Ethan John Paguntalan on 1/28/25.
//

import SwiftUI

struct SStepper: View {
    @State private var stepperValue: Int = 10
    @State private var widthIncrement: CGFloat = 0
    
    var body: some View {
        VStack {
            Stepper("Steper : \(stepperValue)", value: $stepperValue)
            
            RoundedRectangle(cornerRadius: 24)
                .frame(width: 100 + widthIncrement, height: 100)
            
            Stepper("Stepper") {
                incrementWidth(amount: 50)
             
            } onDecrement: {
                incrementWidth(amount: -50)
            }

        }
        .padding(50)
    }
    
    func incrementWidth(amount: CGFloat) {
        withAnimation(.spring) {
            widthIncrement += amount
        }
     
    }
    
}

#Preview {
    SStepper()
}
