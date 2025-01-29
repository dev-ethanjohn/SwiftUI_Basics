//
//  SListSwipeActions.swift
//  SwiftUIBasics
//
//  Created by Ethan John Paguntalan on 1/29/25.
//

import SwiftUI

struct SListSwipeActions: View {
    @State private var fruits: [String] = [
        "apple", "orange", "banana", "grapes"
    ]
    
    var body: some View {
        List {
            ForEach(fruits, id: \.self) {
                Text($0.capitalized)
                        //allow full swipe if we only have 1 button, for better ux
                    .swipeActions(edge: .trailing, allowsFullSwipe: false) {
                        Button {
                            //
                        } label: {
                            Text("Archive")
                        }
                        .tint(.green)
                        
                        Button {
                            //
                        } label: {
                            Text("Save")
                        }
                        .tint(.blue)
                        
                        Button {
                            //
                        } label: {
                            Text("Junk")
                        }
                        .tint(.black)
                        
                    }
            }
            //            .onDelete(perform: delete)
            
        }
    }
    
    func delete(indexSet: IndexSet) {
        
    }
    
}

#Preview {
    SListSwipeActions()
}
