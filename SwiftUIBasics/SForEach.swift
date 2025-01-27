//
//  SForEach.swift
//  SwiftUIBasics
//
//  Created by Ethan John Paguntalan on 1/27/25.
//

import SwiftUI

struct SForEach: View {
    
    let data: [String] = ["Hi", "Hello", "Hey", "Yo!"]
    let myString: String = "Hello"
    
    var body: some View {
        VStack {
            ForEach(0..<4) { index in
                HStack {
                    Circle()
                        .frame(width: 50, height: 50)
                    Text("\(index)")
                        .font(.largeTitle)
                        .bold()
                }
            }
            
            // if you only care about the array's values.
            ForEach(data, id: \.self) { item in
                Text("New item: \(item)")
                
            }
            
            //if you wanted to access also the indices of each item as well as the values
            ForEach(data.indices, id: \.self) { index in
                Text("\(data[index]): \(index)")
            }
        }
    }
}

#Preview {
    SForEach()
}
