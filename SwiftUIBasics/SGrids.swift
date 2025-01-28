//
//  SGrids.swift
//  SwiftUIBasics
//
//  Created by Ethan John Paguntalan on 1/28/25.
//

import SwiftUI

struct SGrids: View {
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil)
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, pinnedViews: [.sectionHeaders]) {
                Section {
                    ForEach(0..<50) { index in
                        Rectangle()
                            .frame(height: 150)
                    }
                } header: {
                    Text("Section 1")
                        .foregroundStyle(.white)
                        .padding()
                        .padding(.horizontal)
                        .background(.pink)
                }
            }
        }
        .scrollIndicators(.hidden)
    }
}

#Preview {
    SGrids()
}
