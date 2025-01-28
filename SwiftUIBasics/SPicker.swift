//
//  SPicker.swift
//  SwiftUIBasics
//
//  Created by Ethan John Paguntalan on 1/28/25.
//

import SwiftUI

struct SPicker: View {
    @State private var selection: String = "Most Recent"
    
    let filterOptions: [String] = [
        "Most Recent",
        "Most Popular",
        "Most Liked"
    ]
    
    var body: some View {
        VStack {
            //            HStack {
            //                Text("Age:")
            //                Text(selection)
            //            }
            //
            //
            //            Picker(selection: $selection) {
            //
            //                ForEach(18..<99) { age in
            //                    Text("\(age)").tag("\(age)")
            //                }
            //
            //            } label: {
            //                Text("Picker")
            //            }
            //            .background(.blue.opacity(0.2))
            //            .pickerStyle(.wheel)
                
            Text("Filter: \(selection)")
                         .font(.headline)
                         .fontWeight(.bold)
                         .padding(.bottom, 5)

                     Picker("", selection: $selection) {
                         ForEach(filterOptions, id: \.self) { option in
                             HStack {
                                 Text(option)
//                                 Image(systemName: "heart")
                             }
//                             .tag(option)
                         }
                     }
                     .pickerStyle(.menu)
                     .tint(.white)
                     .padding()
                     .background(Color.pink)
                     .clipShape(RoundedRectangle(cornerRadius: 10))
                     .shadow(radius: 2)
                     .labelsHidden()
        }
        .padding()
    }
}

#Preview {
    SPicker()
}
