//
//  SIfElse.swift
//  SwiftUIBasics
//
//  Created by Ethan John Paguntalan on 1/28/25.
//

import SwiftUI

struct SIfElse: View {
    
    @State private var showCircle: Bool = false
    @State private var showRectangle: Bool = false
    @State private var isLoading: Bool = false
    var body: some View {
        VStack(spacing: 20) {
//            Button {
//                showCircle.toggle()
//            } label: {
//                Text("Circle Button: \(showCircle.description)")
//            }
//            
//            Button("Rectangle Button \(showRectangle.description)") {
//                showRectangle.toggle()
//            }
//            
//            if showCircle {
//                Circle()
//                    .frame(width: 100, height: 100)
//            }
//            
//            if showRectangle {
//                Rectangle()
//                    .frame(width: 100, height: 100)
//            }
//            
//            
//            
//            if !showCircle && !showRectangle {
//                RoundedRectangle(cornerRadius: 24)
//                    .frame(width: 200, height: 100)
//            }
            
    
            
            Button("Is loading: \(isLoading.description)") {
                isLoading.toggle()
            }
            
            if isLoading {
                ProgressView()
            }
            
            Spacer()
            

        }
    }
}

#Preview {
    SIfElse()
}
