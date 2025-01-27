//
//  SText.swift
//  SwiftUIBasics
//
//  Created by Ethan John Paguntalan on 1/27/25.
//

import SwiftUI

struct SText: View {
    var body: some View {
        Text("Hello, World! I am Ethan John Paguntalan. Please be good to me!" .lowercased())
//            .font(.title)
//            .fontWeight(.semibold)
            .underline()
            .italic()
            //using this won't make it resizable or adaptable depending on device.
            .font(.system(size: 23, weight: .bold, design: .monospaced))
//            .baselineOffset(12)
            .kerning(1) // spacing bet letters
            .foregroundStyle(.gray)
            .multilineTextAlignment(.leading)
            .frame(width: 200, height: 100, alignment: .leading)
            .minimumScaleFactor(0.3)
            
    }
}

#Preview {
    SText()
}
