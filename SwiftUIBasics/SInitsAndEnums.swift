//
//  SInitsAndEnums.swift
//  SwiftUIBasics
//
//  Created by Ethan John Paguntalan on 1/27/25.
//

import SwiftUI

struct SInitsAndEnums: View {
    
    var backgroundColor: Color
    let count: Int
    let title: String
    
//    //it is preferred to put the defayult value in the parameter
//    init(backgroundColor: Color = .orange, title: String, fruit: Fruit) {
//        self.backgroundColor = backgroundColor
//        self.count = 56 // but this is also valid
//        self.title = title
    
    init(fruit: Fruit, count: Int) {
        self.count = count
        // self.count = count -> means "assign the value of the count parameter to the count property of this instance of SInitsAndEnums that I'm currently creating"
        
        switch fruit {
        case .apple:
            self.title = "Apples"
            self.backgroundColor = .red
        case .orange:
            self.title = "Oranges"
            self.backgroundColor = .orange
        }
    }
    
    enum Fruit {
        case apple, orange
    }
    
    var body: some View {
        VStack(spacing: 12) {
            Text("\(count)")
                .font(.largeTitle)
                .bold()
                .underline()
            Text("\(title)")
        }
        .foregroundStyle(.white)
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .clipShape(RoundedRectangle(cornerRadius: 12))
    }
}

#Preview {
    SInitsAndEnums(fruit: .apple, count: 20)
}
