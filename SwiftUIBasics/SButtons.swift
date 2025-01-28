//
//  SButtons.swift
//  SwiftUIBasics
//
//  Created by Ethan John Paguntalan on 1/28/25.
//

import SwiftUI

struct SButtons: View {
    @State private var  title: String = "This is my title"
    var body: some View {
        VStack(spacing: 20){
            Text(title)
            Button {
                self.title = "This was pressed"
            } label: {
                Text("Press Me".uppercased())
                    .font(.headline)
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(
                        RoundedRectangle(cornerRadius: 20)
                            .fill(.blue)
                            .shadow(radius: 4)
                    )
               
            }
            .tint(.red)
            
            
            

        }
    }
}

#Preview {
    SButtons()
}
