//
//  SFocusState.swift
//  SwiftUIBasics
//
//  Created by Ethan John Paguntalan on 1/29/25.
//

import SwiftUI

struct SFocusState: View {
    
    enum OnboardingField: Hashable {
        case username, password
    }
    
//    @FocusState private var nameIsFocused: Bool
    @State private var username: String = ""
//    @FocusState private var passwordIsFocused: Bool
    @State private var password: String = ""
    @FocusState private var fieldInFocus: OnboardingField?
    
    var body: some View {
        
        VStack(spacing: 30) {
            TextField("Add you name here", text: $username)
                .focused($fieldInFocus, equals: .username)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .clipShape(RoundedRectangle(cornerRadius: 12))
            
            TextField("Add you name password", text: $password)
                .focused($fieldInFocus, equals: .password)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .clipShape(RoundedRectangle(cornerRadius: 12))
            
            Button {
                let usernameIsValid = !username.isEmpty
                let passwordIsValid = !password.isEmpty
                
                if usernameIsValid && passwordIsValid {
                    print("SIGN UP")
                } else if usernameIsValid {
//                    nameIsFocused = false
//                    passwordIsFocused = true
                    fieldInFocus = .password
                } else {
//                    nameIsFocused = true
//                    passwordIsFocused = false
                    fieldInFocus = .username
                }
            } label: {
                Text("Sign up")
            }
            
            


        }
        .padding(40)
//        .onAppear {
//            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
//                self.nameIsFocused = true
//            }
//        }
        
    }
}

#Preview {
    SFocusState()
}
