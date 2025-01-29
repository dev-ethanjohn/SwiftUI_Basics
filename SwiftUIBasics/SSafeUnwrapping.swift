//
//  SSafeUnwrapping.swift
//  SwiftUIBasics
//
//  Created by Ethan John Paguntalan on 1/29/25.
//

import SwiftUI

struct SSafeUnwrapping: View {
    
    @State private var displayText: String? = nil
    @State private var isLoading: Bool = false
    
    //signed in user
    @State private var currentUserID: String? = "usertest123"
    
    
    var body: some View {
        NavigationStack {
            VStack {
              
                Text("Here we are practicing safe coding")
                //MARK: If you need to have apalceholder while data si lloading
//                Text(displayText ?? "Loading...")
                
                //MARK: safe unrapping
                if let displayText {
                    Text(displayText)
                        .font(.title)
                        .bold()
                }
                
                if isLoading {
                    ProgressView()
                }

              
                Spacer()
            }
            .navigationTitle("Safe Coding")
            .onAppear {
                withAnimation(.spring) {
                    loadData2()
                }
            
            }
        }
    }
    
    func loadData() {
        if let userID = currentUserID {
            isLoading =  true
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                displayText = "This is the new data \(userID)"
                isLoading = false
            }
        } else {
            displayText = "ERROR. tHRE IS NO user ID"
        }
    }
    
    
    func loadData2() {
        guard let userID = currentUserID  else {
            displayText = "ERROR. tHRE IS NO user ID"
            return
        }
        
        isLoading =  true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            displayText = "This is the new data \(userID)"
            isLoading = false
        }
    }
}

#Preview {
    SSafeUnwrapping()
}
