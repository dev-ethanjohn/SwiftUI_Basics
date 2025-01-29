//
//  SBackgroundMaterials.swift
//  SwiftUIBasics
//
//  Created by Ethan John Paguntalan on 1/29/25.
//

import SwiftUI

struct SBackgroundMaterials: View {
    
    var body: some View {
        
        VStack {
            Spacer()
            
            VStack {
                RoundedRectangle(cornerRadius: 4)
                    .frame(width: 50, height: 4)
                    .padding()
                    
                Spacer()
            }
            .frame(height: 350)
            .frame(maxWidth: .infinity)
            .background(Material.ultraThin)
            .clipShape(RoundedRectangle(cornerRadius: 30))
        }
        .ignoresSafeArea()
        .background(
            Image("iameh")
            
        )
    }
}

#Preview {
    SBackgroundMaterials()
}
