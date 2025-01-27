//
//  SSpacer.swift
//  SwiftUIBasics
//
//  Created by Ethan John Paguntalan on 1/27/25.
//

import SwiftUI

struct SSpacer: View {
    var body: some View {
//        HStack {
//            Rectangle()
//                .frame(width: 100, height: 100)
//            
//            Spacer()
//                .frame(height: 10)
//                .background(.orange)
//            
//            Rectangle()
//                .fill(.red)
//                .frame(width: 100, height: 100)
//        }
//        .background(.blue)
        VStack {
            HStack {
                Image(systemName: "plus")
                Spacer()
                Image(systemName: "xmark")
            }
            .font(.title)
            .padding(.horizontal)
            
            Spacer()
            
            Rectangle()
                .fill(.orange)
                .frame(maxWidth: .infinity)
                .frame(height: 30)
            
            
        }
    }
}

#Preview {
    SSpacer()
}
