//
//  SKeyboardSubmit.swift
//  SwiftUIBasics
//
//  Created by Ethan John Paguntalan on 1/30/25.
//

import SwiftUI

struct SKeyboardSubmit: View {
    @State private var text: String = ""
    var body: some View {
        Text("Hello, World!")
        TextField("ss", text: $text)
            .submitLabel(.route)
            .onSubmit {
                print("Print")
            }
        
        TextField("ss", text: $text)
            .submitLabel(.send)
            .onSubmit {
                print("Print")
            }
        
        TextField("ss", text: $text)
            .submitLabel(.search)
            .onSubmit {
                print("Print")
            }
    }
}

#Preview {
    SKeyboardSubmit()
}
