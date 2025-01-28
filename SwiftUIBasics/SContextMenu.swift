//
//  SContextMenu.swift
//  SwiftUIBasics
//
//  Created by Ethan John Paguntalan on 1/28/25.
//

import SwiftUI

struct SContextMenu: View {
    @State private var bgColor: Color = .pink
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Image(systemName: "house.fill")
                .font(.title)
            Text("Ethan John Paguntalan")
                .font(.headline)
            Text("How to use context menu")
                .font(.subheadline)
        }
        .foregroundStyle(.white)
        .padding(30)
        .background(
            RoundedRectangle(cornerRadius: 30)
                .fill(bgColor)
        )
        .contextMenu {
////            OptionMenu("Menu") {
//                Button("Copy") {}
//                Button("Share") {}
////            }
            Button {
                bgColor = .yellow
            } label: {
                Label {
                    Text("Share post")
                } icon: {
                    Image(systemName: "flame.fill")
                }

            }
            
            
            Button {
                bgColor = .red
            } label: {
                Text("Report post")
            }
            
            Button {
                bgColor = .green
            } label: {
                HStack {
                    Text("Like post")
                    Image(systemName: "heart.fill")
                }
                
                Text("Button 2")
            }
        }
    }
}

#Preview {
    SContextMenu()
}
