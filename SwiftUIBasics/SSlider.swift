//
//  SSlider.swift
//  SwiftUIBasics
//
//  Created by Ethan John Paguntalan on 1/28/25.
//

import SwiftUI

struct SSlider: View {
    
    @State private var sliderValue: Double = 5
    @State private var color: Color = .red
    
    var body: some View {
        VStack {
            Text("Rating:")
            Text(
                String(format: "%.0f", sliderValue)
            )
            .foregroundStyle(color)
//            Slider(value: $sliderValue)
//            Slider(value: $sliderValue, in: 1...5)
//            Slider(value: $sliderValue, in: 1...5, step: 1.0)
//
            Slider(value: $sliderValue, in: 0...5, step: 1.0) {
                Text("HJello")
            } minimumValueLabel: {
                Text("1")
            } maximumValueLabel: {
                Text("5")
            } onEditingChanged: { _ in
                color = .green
            }
            .tint(.orange)
        }
        .padding(50)
      
    }
}

#Preview {
    SSlider()
}
