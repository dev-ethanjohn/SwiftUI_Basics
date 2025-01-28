//
//  SSubViews.swift
//  SwiftUIBasics
//
//  Created by Ethan John Paguntalan on 1/28/25.
//

import SwiftUI

struct SSubViews: View {
    //    @State private var backgroundColor: Color = Color.pink
    @State private var isPink: Bool = true
    var body: some View {
        ZStack {
            //abckground
            //            backgroundColor.ignoresSafeArea()
            (isPink ? Color.pink : Color.yellow).ignoresSafeArea()
            
            //content
            contentLayer
        }
    }
    
    var contentLayer: some View {
        VStack {
            Text("Title")
                .font(.largeTitle)
            Button {
                //                    backgroundColor = .yellow
                buttonPressed()
            } label: {
                Text("Press Me")
                    .font(.headline)
                    .foregroundStyle(.white)
                    .padding()
                    .background(.black)
                    .clipShape(
                        RoundedRectangle(cornerRadius: 10)
                    )
            }
        }
    }
    
    func buttonPressed() {
        isPink.toggle()
    }
}

#Preview {
    SSubViews()
}
