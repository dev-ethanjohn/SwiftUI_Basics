//
//  SExtractSubviews.swift
//  SwiftUIBasics
//
//  Created by Ethan John Paguntalan on 1/28/25.
//

import SwiftUI

struct SExtractSubviews: View {
    var body: some View {
        ZStack {
            Color.orange.ignoresSafeArea()
            
            contentLayer
        
        }
    }
    
    var contentLayer: some View {
        HStack {
            MyItem(title: "Apples", count: 23, color: .red)
            MyItem(title: "Guavas", count: 10, color: .green)
            MyItem(title: "Banana", count: 22, color: .yellow)
        }
    }

//    // this is good if the data inside are static and not changing
//    var myItem: some View {
//        VStack {
//            Text("1")
//            Text("Apples")
//        }
//        .padding()
//        .background(.red)
//        .clipShape(RoundedRectangle(cornerRadius: 10))
//    }
}

#Preview {
    SExtractSubviews()
}

struct MyItem: View {
    
    let title: String
    let count: Int
    let color: Color
    
    var body: some View {
        VStack {
            Text("\(count)")
            Text(title)
        }
        .padding()
        .background(color)
        .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}
