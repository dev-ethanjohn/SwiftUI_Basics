//
//  SModels.swift
//  SwiftUIBasics
//
//  Created by Ethan John Paguntalan on 1/29/25.
//

import SwiftUI

struct UserModel: Identifiable {
    let id: String = UUID().uuidString
    let displayName: String
    let userName: String
    let followerCount: Int
    let isVerified: Bool
    
}

struct SModels: View {
    
    @State private var users: [UserModel] = [
        UserModel(displayName: "Nick", userName: "nick22", followerCount: 21, isVerified: false),
        UserModel(displayName: "Samantha", userName: "samantha12", followerCount: 122, isVerified: true),
        UserModel(displayName: "Emily", userName: "smily87", followerCount: 1, isVerified: false),
        UserModel(displayName: "Chris", userName: "12chris", followerCount: 872, isVerified: true),
    ]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(users) { name in
                    HStack(spacing: 16) {
                        Circle()
                            .frame(width: 35, height: 35)
                        VStack {
                            Text(name.displayName)
                                .font(.headline)
                            Text("@\(name.userName)")
                                .foregroundStyle(.gray)
                                .font(.caption)
                            
                       
                        }
                        Spacer()
                        
                        if name.isVerified {
                            Image(systemName: "checkmark.seal.fill")
                                .foregroundStyle(.blue)
                        }
                    
                         
                        VStack {
                            Text("\(name.followerCount)")
                                .font(.headline)
                            Text("Followers")
                                .foregroundStyle(.gray)
                                .font(.caption)
                        }
                    
                    }
                    .padding(.vertical, 10)
                }
            }
            .navigationTitle("Users")
        }
    }
}

#Preview {
    SModels()
}
