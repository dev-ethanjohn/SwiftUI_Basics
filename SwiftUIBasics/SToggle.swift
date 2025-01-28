//
//  SToggle.swift
//  SwiftUIBasics
//
//  Created by Ethan John Paguntalan on 1/28/25.
//

import SwiftUI

struct SToggle: View {
    @State private var isOn: Bool = false
    
    var body: some View {
        VStack {
            HStack {
                Text("Status: ")
                Text(isOn ? "Online" : "Offline")
            }
            
            Toggle(isOn: $isOn) {
                Text("Chnage Status")
            }
            .tint(.blue)
            
            Spacer()
        }
        .padding(.horizontal, 100)
   
    }
}

#Preview {
    SToggle()
}
