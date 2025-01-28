//
//  NavigationViewAndNavigationLink.swift
//  SwiftUIBasics
//
//  Created by Ethan John Paguntalan on 1/28/25.
//

import SwiftUI

struct NavigationViewAndNavigationLink: View {
    var body: some View {
        NavigationView {
            ScrollView {
                Text("sds")
                Text("sds")
                Text("sds")
                
                NavigationLink {
                    MyOtherScreen()
                } label: {
                    Text("Go to this screen")
                }

            }
            .navigationTitle(Text("Hello"))
            .navigationBarTitleDisplayMode(.large)
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Image(systemName: "bell")
                }
            }
        }
    }
}

struct MyOtherScreen: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.orange.ignoresSafeArea()
                .navigationTitle("Orange screen")
                .navigationBarBackButtonHidden()
            
            VStack(alignment: .leading) {
                Button {
                    dismiss()
                } label: {
                    Image(systemName: "xmark")
                }
                
                NavigationLink {
                    Text("3rd screen")
                } label: {
                    Text("Click here")
                }
                
              

            }
         
        }
    }
}

#Preview {
    NavigationViewAndNavigationLink()
}
