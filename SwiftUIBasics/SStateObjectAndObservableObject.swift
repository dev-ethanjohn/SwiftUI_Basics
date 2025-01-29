//
//  SStateObjectAndObservableObject.swift
//  SwiftUIBasics
//
//  Created by Ethan John Paguntalan on 1/29/25.
//

import SwiftUI

class FruitViewModel: ObservableObject {
    @Published var fruitArray: [FruitModel] = [
        
    ]
    @Published var isLoading: Bool = false
    
    init() {
        //initailize once
        getFruits()
    }
    
    func getFruits() {
        let fruit1 = FruitModel(name: "Orange", count: 1)
        let fruit2 = FruitModel(name: "Banana", count: 2)
        let fruit3 = FruitModel(name: "Guava", count: 22)
        
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
            self.fruitArray.append(fruit1)
            self.fruitArray.append(fruit2)
            self.fruitArray.append(fruit3)
            self.isLoading = false
        }
        
   
    }
    
    func deleteFruit(index: IndexSet) {
        fruitArray.remove(atOffsets: index)
    }
}

struct FruitModel: Identifiable {
    let id: String = UUID().uuidString
    let name: String
    let count: Int
}

struct SStateObjectAndObservableObject: View {
    
    //this object will persist even if the screen reloads. unlike observed object
    @StateObject private var viewModel: FruitViewModel = FruitViewModel()
  
    var body: some View {
        NavigationStack {
            List {
                
                if viewModel.isLoading {
                    ProgressView()
                } else {
                    ForEach(viewModel.fruitArray) { fruit in
                        HStack {
                            Text("\(fruit.count)")
                                .foregroundStyle(.red)
                            Text(fruit.name)
                                .font(.headline)
                                .bold()
                        }
                    }
                    .onDelete(perform: viewModel.deleteFruit)
                }
            }
//            .onAppear {
//                viewModel.getFruits()
//            }
            .navigationTitle("Fruit List")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    NavigationLink {
                        SecondFruitViewScreen(viewModel: viewModel)
                            .navigationBarBackButtonHidden()
                    } label: {
                        Image(systemName: "arrow.right")
                            .font(.title)
                    }

               
                }
            }
        }
    }
}


struct SecondFruitViewScreen: View {
    @Environment(\.dismiss) var dismiss
    @ObservedObject var viewModel: FruitViewModel
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
            
            VStack {
                Button {
                    dismiss()
                } label: {
                    Text("GO BACK")
                        .foregroundStyle(.white)
                        .font(.title)
                        .fontWeight(.semibold)
                }
                
                ForEach(viewModel.fruitArray) { fruit in
                    Text(fruit.name)
                        .font(.title)
                        .bold()
                        .foregroundStyle(.white)
                }
            }
         

        }
    }
}

#Preview {
    SStateObjectAndObservableObject()
}
