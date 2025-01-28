//
//  SBinding.swift
//  SwiftUIBasics
//
//  Created by Ethan John Paguntalan on 1/28/25.
//

import SwiftUI

struct SBinding: View {
    
    @State private var backgroundColor: Color = Color.green
    
    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea()
            
            VStack {
                ButtonView(backgroundColor: $backgroundColor)
                
                ToggleView(backgroundColor: $backgroundColor)
            }

        }
    }
}

#Preview {
    SBinding()
}

struct ButtonView: View {
    @Binding var backgroundColor: Color
    @State private var isButtonBlue: Bool = true //toggle
    var body: some View {
        Button {
            backgroundColor = Color.orange
            isButtonBlue.toggle()
        } label: {
            Text("Click me")
                .foregroundStyle(.white)
                .padding()
                .padding(.horizontal)
                .background(isButtonBlue ? .blue : .red)
                .clipShape(RoundedRectangle(cornerRadius: 1))
        }
    }
}

struct ToggleView: View {
    @Binding var backgroundColor: Color
    @State private var isToggled: Bool = false 
    var body: some View {
        Toggle(isOn: $isToggled) {
            Text("Toggle background")
        }
        .onChange(of: isToggled) { newValue, _ in
            backgroundColor = newValue ? Color.pink : Color.yellow
        }
    }
}
