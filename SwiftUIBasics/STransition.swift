//
//  STransition.swift
//  SwiftUIBasics
//
//  Created by Ethan John Paguntalan on 1/28/25.
//

import SwiftUI

struct STransition: View {
    @State private var showView: Bool = false
    var body: some View {
        ZStack(alignment: .bottom) {
            
            
            VStack  {
                
                Button {
                    withAnimation(.spring) {
                        showView.toggle()
                    }
                } label: {
                    Text("Button")
                }
                
                Spacer()

            }
            
            if showView {
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
//                    .transition(.move(edge: .bottom))
                //Good when working with opacity
//                   .transition(AnyTransition(.opacity).animation(.spring()))
//                    .transition(AnyTransition(.scale).animation(.spring()))
                    //MARK: if you wanted to custmize your transition when it open and exit
                    .transition(.asymmetric(insertion: .scale, removal: .move(edge: .bottom)))
            }
        }
        .ignoresSafeArea(edges: .bottom)
    }
}

#Preview {
    STransition()
}
