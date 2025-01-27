//
//  SGradients.swift
//  SwiftUIBasics
//
//  Created by Ethan John Paguntalan on 1/27/25.
//

import SwiftUI

struct SGradients: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .fill(
//                .red
//                LinearGradient(colors: [Color.blue, Color.orange, Color.green], startPoint: .topLeading, endPoint: .trailing)
//                RadialGradient(colors: [.green, .blue], center: .topLeading, startRadius: 20.0, endRadius: 120.0)
                AngularGradient(colors: [Color.yellow, Color.green], center: .topLeading, angle: .degrees(200))
            )
            .frame(width: 300, height: 200)
    }
}

#Preview {
    SGradients()
}
