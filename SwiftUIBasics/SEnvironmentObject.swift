//
//  SEnvironmentObject.swift
//  SwiftUIBasics
//
//  Created by Ethan John Paguntalan on 1/29/25.
//

import SwiftUI


class EnvironmentViewModel: ObservableObject {
    @Published var dataArray: [String] = []
    init() {
        getData()
    }
    
    func getData() {
        self.dataArray.append(contentsOf: ["Iphone", "Ipod", "Imac", "Apple Watch"])
    }
}

struct SEnvironmentObject: View {
    
    @StateObject private var viewModel: EnvironmentViewModel = EnvironmentViewModel()
    var body: some View {
        NavigationStack {
            List {
                ForEach(viewModel.dataArray, id: \.self) { item in
                    NavigationLink {
                        DetailView(selectedItem: item)
                    } label: {
                        Text(item)
                    }

             
                }
            }
            .navigationTitle("iOS Devices")
        } //MARK:
        .environmentObject(viewModel)
    }
}


struct DetailView: View {
//    @ObservedObject var viewModel: EnvironmentViewModel
    let selectedItem: String
    var body: some View {
        ZStack {
            Color.orange.ignoresSafeArea()
            
            NavigationLink {
//                FinalView(viewModel: viewModel)
                FinalView()
            } label: {
                Text(selectedItem)
                    .font(.headline)
                    .bold()
                    .foregroundStyle(.orange)
                    .padding()
                    .padding(.horizontal)
                    .background(.white)
                    .clipShape(Capsule())
            }

        
            
        }
    }
}

struct FinalView: View {
//    @ObservedObject var viewModel: EnvironmentViewModel
    @EnvironmentObject var viewModel: EnvironmentViewModel
    var body: some View {
        ZStack {
            Color.gray.ignoresSafeArea()
            
            ScrollView {
                VStack(spacing: 20) {
                    
                    ForEach(viewModel.dataArray, id: \.self) { device in
                        Text(device)
                    }
                }
                .foregroundStyle(.white)
                .font(.largeTitle)
            }
        }
    }
}


#Preview {
    SEnvironmentObject()
}
