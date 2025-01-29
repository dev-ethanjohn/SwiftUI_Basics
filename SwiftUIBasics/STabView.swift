//
//  STabView.swift
//  SwiftUIBasics
//
//  Created by Ethan John Paguntalan on 1/28/25.
//

import SwiftUI

struct STabView: View {
    
    @State private var selectedTab: Int = 0
    let icons: [String] = [
        "heart.fill",
        "globe",
        "house.fill",
        "person.fill"
    ]
    var body: some View {
        
        
        
        TabView {
            ForEach(icons, id: \.self) { icon in
                Image(systemName: icon)
                    .resizable()
                    .scaledToFit()
                    .padding(20)
            }
        }
        .frame(height: 300)
        .background(.red)
        .tabViewStyle(PageTabViewStyle())
//        TabView(selection: $selectedTab) {
//            
//            HomeView(selectedTab: $selectedTab)
//                .tabItem {
//                    VStack {
//                        Image(systemName: "house.fill")
//                        Text("Home")
//                    }
//                }
//                .tag(0)
//            
//            Text("BROWSE")
//                .tabItem {
//                    VStack {
//                        Image(systemName: "globe")
//                        Text("Browse")
//                    }
//                }
//                .tag(1)
//            
//            Text("PROFILE")
//                .tabItem {
//                    VStack {
//                        Image(systemName: "person.fill")
//                        Text("Profile")
//                    }
//                }
//                .tag(2)
//        }
//        .tint(.black)
    }
}

#Preview {
    STabView()
}

struct HomeView: View {
    
    @Binding var selectedTab: Int
    var body: some View {
        ZStack {
            Color.red.ignoresSafeArea()
            
            VStack {
                Text("HOME")
                    .font(.title)
                    .foregroundStyle(.white)
                
                Button {
                    selectedTab = 2
                } label: {
                    Text("Go to profile")
                        .font(.headline)
                        .padding()
                        .padding(.horizontal)
                        .background(.white)
                }
            }

        }
   
    }
}
