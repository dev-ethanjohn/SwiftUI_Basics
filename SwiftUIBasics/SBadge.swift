//
//  SBadge.swift
//  SwiftUIBasics
//
//  Created by Ethan John Paguntalan on 1/29/25.
//

import SwiftUI

struct SBadge: View {
    
    var body: some View {
        
        //only work on list or tabbar/taview
        TabView {
            RedScreen()
                .tabItem {
                    Image(systemName: "heart.fill")
                }
                .badge(1)
            
            Color.green
                .tabItem {
                    Image(systemName: "heart.fill")
                }
                .badge("New")
            
            Color.blue
                .tabItem {
                    Image(systemName: "heart.fill")
                }
        }
    }
}

struct RedScreen: View {
    var body: some View {
        VStack {
            List {
                Text("hello")
                    .badge("New")
            }
        }
    }
}

#Preview {
    SBadge()
}
