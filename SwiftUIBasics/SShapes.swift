//
//  SShapes.swift
//  SwiftUIBasics
//
//  Created by Ethan John Paguntalan on 1/27/25.
//

import SwiftUI

struct SShapes: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .fill(.orange.opacity(0.2))
            .stroke(.blue, style: StrokeStyle(lineWidth: 2, lineCap: .butt, dash: [12.0, 23]))
            .frame(width: 150, height: 80)    
    }
}

#Preview {
    SShapes()
}
