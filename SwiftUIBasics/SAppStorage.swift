//
//  SAppStorage.swift
//  SwiftUIBasics
//
//  Created by Ethan John Paguntalan on 1/29/25.
//

import SwiftUI

struct SAppStorage: View {
    //    @State private var currentUserName: String?
    @AppStorage("username") var currentUserName: String?
    
    var body: some View {
        VStack(spacing: 20) {
            if let name = currentUserName {
                Text("Username: \(name)")
                    .font(.title)
            } else {
                Text("No username saved")
                    .font(.title)
                    .foregroundColor(.gray)
            }
            
            Button {
                //UserDefaults
                let name = "sds"
                currentUserName = name
                //                UserDefaults.standard.set(name, forKey: "currentUserName") // save it here
            } label: {
                Text("Save")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
                
            }
            
        }
        //        .onAppear {
        //            //asigning the stored value =
        //            currentUserName = UserDefaults.standard.string(forKey: "currentUserName")
        //        }
    }
}

#Preview {
    SAppStorage()
}
