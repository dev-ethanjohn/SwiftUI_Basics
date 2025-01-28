//
//  SList.swift
//  SwiftUIBasics
//
//  Created by Ethan John Paguntalan on 1/28/25.
//

import SwiftUI

struct SList: View {
    @State private var fruits: [String] = [
        "Orange", "Apple", "Banana", "Grape"
    ]
    @State private var veggies: [String] = [
        "Tomato", "Carrot", "Potato"
    ]
    @State private var isFruitsCollapsed: Bool = false // State for Fruits section
    @State private var isVeggiesCollapsed: Bool = false // State for Veggies section

    var body: some View {
        NavigationStack {
            List {
                // Fruits Section
                Section(
                    header: HStack {
                        HStack {
                            Text("Fruits")
                            Text("🍎")
                        }
                        .font(.title)

                   
                        Spacer()
                        Button {
                            withAnimation {
                                isFruitsCollapsed.toggle()
                            }
                        } label: {
                            Image(systemName: isFruitsCollapsed ? "chevron.down" : "chevron.up")
                                .foregroundColor(.blue)
                        }
                    }
                ) {
                    if !isFruitsCollapsed {
                        ForEach(fruits, id: \.self) { fruit in
                            Text("\(fruit.capitalized)")
                                .font(.subheadline)
                                .bold()
                                .foregroundStyle(.gray)
                                
                        }
                        .onDelete(perform: deleteFruits)
                        .onMove(perform: moveFruits)
                        .listRowBackground(Color(.systemGray5))
                    }
                }
           
            
                
                // Veggies Section
                Section(
                    header: HStack {
                        Text("Veggies")
                        Spacer()
                        Button {
                            withAnimation {
                                isVeggiesCollapsed.toggle()
                            }
                        } label: {
                            Image(systemName: isVeggiesCollapsed ? "chevron.down" : "chevron.up")
                                .foregroundColor(.green)
                        }
                    }
                ) {
                    if !isVeggiesCollapsed {
                        ForEach(veggies, id: \.self) { veggie in
                            Text("\(veggie.capitalized)")
                        }
                        .onDelete(perform: deleteVeggies)
                        .onMove(perform: moveVeggies)
                    }
                }
            }
            .navigationTitle("Grocery List")
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    EditButton()
                }
                
                ToolbarItem(placement: .topBarTrailing) {
                    addButton
                }
            }
        }
        .tint(.red)
    }

    // Functions to manage Fruits
    func deleteFruits(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
    
    func moveFruits(indices: IndexSet, newOffset: Int) {
        fruits.move(fromOffsets: indices, toOffset: newOffset)
    }
    
    // Functions to manage Veggies
    func deleteVeggies(indexSet: IndexSet) {
        veggies.remove(atOffsets: indexSet)
    }
    
    func moveVeggies(indices: IndexSet, newOffset: Int) {
        veggies.move(fromOffsets: indices, toOffset: newOffset)
    }
    
    // Add a new fruit for simplicity
    func add() {
        fruits.append("Coconut")
    }
    
    // Add Button
    var addButton: some View {
        Button {
            add()
        } label: {
            Text("Add")
        }
    }
}

#Preview {
    SList()
}
