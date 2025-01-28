//
//  SState.swift
//  SwiftUIBasics
//
//  Created by Ethan John Paguntalan on 1/28/25.
//

import SwiftUI

struct SState: View {
    
    @State private var backgroundColor: Color = Color.green
    @State private var myTitle: String = "My Title"
    @State private var count: Int = 0
    
     
    var body: some View {
        ZStack {
            //background
            backgroundColor
                .ignoresSafeArea()
            
            //content
            VStack(spacing: 20) {
                Text(myTitle)
                    .font(.title)
                Text("Count: \(count)")
                    .font(.headline)
                    .underline()
                
                HStack(spacing: 20) {
                    Button {
                        backgroundColor = .red
                        myTitle = "Button 1 was pressed"
                        count += 1
                        
                    } label: {
                        Text("BUTTON 1")
                    }
                    
                    Button {
                        backgroundColor = .purple
                        myTitle = "Button 2 was pressed"
                        count -= 1
                    } label: {
                        Text("BUTTON 2")
                    }

                }
            }
            .foregroundStyle(.white)
        }
    }
}

#Preview {
    SState()
}
