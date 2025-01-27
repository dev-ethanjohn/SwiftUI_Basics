//
//  SImages.swift
//  SwiftUIBasics
//
//  Created by Ethan John Paguntalan on 1/27/25.
//

import SwiftUI

struct SImages: View {
    var body: some View {
        Image("iameh").resizable().scaledToFill()
            .frame(width: 200, height: 200)
            .clipShape(Circle())
            .clipped()
        Image("write").resizable().scaledToFill()//I made the rendering to template so i can change the color
            .frame(width: 50, height: 50)
            .foregroundStyle(.orange)
    }
}

#Preview {
    SImages()
}
