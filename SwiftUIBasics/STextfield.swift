//
//  STextfield.swift
//  SwiftUIBasics
//
//  Created by Ethan John Paguntalan on 1/28/25.
//

import SwiftUI

struct STextfield: View {
    @State private var textFieldText: String = ""
    @State private var dataArray: [String] = []
    var body: some View {
        
        NavigationStack {
            VStack {
                TextField("Type something here....", text: $textFieldText)
                    .padding()
                    .background(Color(.systemGray6))
                    .clipShape(RoundedRectangle(cornerRadius: 8))
                    .textFieldStyle(.plain)
                    .font(.body)
                    .foregroundColor(.primary)
                
                Button {
                    if textIsAppropriate() {
                        saveText()
                    }

                } label: {
                    Text("Save".uppercased())
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(
                            RoundedRectangle(cornerRadius: 8)
                                .fill(textIsAppropriate() ? .blue : .gray)
                        )
                        .font(.headline)
                        .bold()
                        .foregroundStyle(.white)
                    
                }
                .disabled(!textIsAppropriate()) //ensure the button isnt clickable if its false
                
                ForEach(dataArray, id: \.self) { data in
                    Text(data)
                }
                
                Spacer()

            }
            .padding()
            .navigationTitle("TextField")
        }
        
 
        
    }
    
    func textIsAppropriate() -> Bool {
        if textFieldText.count >= 3 {
            return true
        }
        
        return false
    }
    
    func saveText() {
        dataArray.append(textFieldText)
        textFieldText = ""
    }
    
    
}

#Preview {
    STextfield()
}
