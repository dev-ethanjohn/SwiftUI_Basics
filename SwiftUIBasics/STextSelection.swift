//
//  STextSelection.swift
//  SwiftUIBasics
//
//  Created by Ethan John Paguntalan on 1/29/25.
//

import SwiftUI

struct STextSelection: View {
    
    var body: some View {
        Text("Hello, World!")
        //allow us to select them copy or paste
            .textSelection(.enabled)
    }
}

#Preview {
    STextSelection()
}
