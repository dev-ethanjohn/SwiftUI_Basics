//
//  SNavigationStack.swift
//  SwiftUIBasics
//
//  Created by Ethan John Paguntalan on 1/30/25.
//

import SwiftUI

struct SNavigationStack: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    ForEach(0..<10) { x in
                        
                    }
                }
            }
        }
    }
}

#Preview {
    SNavigationStack()
}
