//
//  SColorPicker.swift
//  SwiftUIBasics
//
//  Created by Ethan John Paguntalan on 1/28/25.
//

import SwiftUI

struct SColorPicker: View {
    @State private var selectedColor: Color = .blue
    
    var body: some View {
        ZStack {
            selectedColor.ignoresSafeArea()
            
            ColorPicker("select a color", selection: $selectedColor, supportsOpacity: true)
                .foregroundStyle(.white)
                .font(.headline)
                .padding()
                .background(.black)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .padding()
            
        }
      
    }
}

#Preview {
    SColorPicker()
}
