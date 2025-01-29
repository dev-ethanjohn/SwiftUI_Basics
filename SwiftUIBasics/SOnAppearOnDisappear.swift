//
//  SOnAppearOnDisappear.swift
//  SwiftUIBasics
//
//  Created by Ethan John Paguntalan on 1/29/25.
//

import SwiftUI

struct SOnAppearOnDisappear: View {
    @State private var myText: String = "Starting text"
    @State private var count: Int = 0
    var body: some View {
        NavigationStack {
            ScrollView {
                Text(myText)
                LazyVStack {
                    ForEach(0..<50) { _ in
                        RoundedRectangle(cornerRadius: 24)
                            .frame(height: 200)
                            .padding()
                            .onAppear {
                                count += 1
                                print("Rectangle appeared. Total count: \(count)")
                            }
                        
                    }
                }
            }
            .navigationTitle("On: \(count)")
            .onAppear {
                //add a 2sec delay
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                    myText = "..."
                }
            }
            //more about cleaning things up / functions when user leaves the screen
            .onDisappear {
                myText = "Ending text.."
            }
        }
    }
}

#Preview {
    SOnAppearOnDisappear()
}
