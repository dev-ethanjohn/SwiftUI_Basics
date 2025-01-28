//
//  STextEditor.swift
//  SwiftUIBasics
//
//  Created by Ethan John Paguntalan on 1/28/25.
//

import SwiftUI

struct STextEditor: View {
    @State private var text: String = ""
    @State private var savedText: String = ""
    var body: some View {
        NavigationStack {
            VStack {
                // TextEditor with Placeholder
                ZStack(alignment: .topLeading) {
                    // Placeholder
                    if text.isEmpty {
                        Text("Type something here...")
                            .padding(.vertical, 8)
                            .padding(.horizontal, 5)
                    }

                    // TextEditor
                    TextEditor(text: $text)
                        .padding(4)
                        .background(Color(.systemGray6))
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .opacity(text.isEmpty ? 0.6 : 1) // Adjust opacity for placeholder visibility
                }
                .frame(height: 250) // Set a fixed height for the TextEditor
                
                
                Button {
                    savedText = text
                    text = ""
                } label: {
                    Text("save".uppercased())
                        .font(.headline)
                        .foregroundStyle(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .bold()
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .background(.blue)
                }
                
                Text(savedText)
                
                Spacer()

            }
            .padding()
            .background(Color.orange)
            .navigationTitle("Text editor ")
        }
    }
}

#Preview {
    STextEditor()
}
