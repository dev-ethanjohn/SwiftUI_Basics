//
//  SSheetsAndFullScreenCover.swift
//  SwiftUIBasics
//
//  Created by Ethan John Paguntalan on 1/28/25.
//

import SwiftUI

struct SSheetsAndFullScreenCover: View {
    @State private var showSheet: Bool = false
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
            
            Button {
                showSheet.toggle()
            } label: {
                Text("button")
                    .foregroundStyle(.green)
                    .font(.headline)
                    .bold()
                    .padding(20)
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .fill(.white)
                    )
            }
        }
        //can only be used once in a view hierarchy (1 sheet per view). ALSO do not add conditional logic on the sheet modifier
//        .sheet(isPresented: $showSheet) {
//            SecondScreen()
//        }
        .fullScreenCover(isPresented: $showSheet) {
            SecondScreen()
        }
    }
}

struct SecondScreen: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.orange.ignoresSafeArea()
            
            Button {
                dismiss()
            } label: {
                Image(systemName: "xmark")
                    .foregroundStyle(.white)
                    .font(.largeTitle)
                    .bold()
                    .padding(20)
            }
        }
    }
}

#Preview {
    SSheetsAndFullScreenCover()
}
