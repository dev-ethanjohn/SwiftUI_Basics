//
//  SSafeArea.swift
//  SwiftUIBasics
//
//  Created by Ethan John Paguntalan on 1/28/25.
//

import SwiftUI

struct SSafeArea: View {
    var body: some View {
//        ZStack {
//            //background
//            Color.red.ignoresSafeArea()
//            
//            //foreground content
//            VStack {
//                Text("Hello, World!")
//                    .foregroundStyle(.white)
//                Spacer()
//            }
//        }
        
        ScrollView {
            Text("Title goes here")
                .font(.largeTitle)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            ForEach(0..<10) { index in
                RoundedRectangle(cornerRadius: 24)
                    .fill(.white)
                    .frame(height: 150)
                    .shadow(radius: 10)
                    .padding(20)
            }
        }
        .background(.orange)
        
        
    }
}

#Preview {
    SSafeArea()
}
