//
//  SSheetTransitionAnimationInPractice.swift
//  SwiftUIBasics
//
//  Created by Ethan John Paguntalan on 1/28/25.
//

import SwiftUI

struct SSheetTransitionAnimationInPractice: View {
    
    @State private var showNewScreen: Bool = false
    var body: some View {
        ZStack {
            Color.orange.ignoresSafeArea()
            
            VStack {
                Button {
                    withAnimation (.spring){
                        showNewScreen.toggle()
                    }
           
                } label: {
                    Text("button")
                        .font(.largeTitle)
                }
                
                Spacer()

            }
            
            //METHOD 2 - TRANSITION
//            ZStack {
//                if showNewScreen {
//                    NewScreen(showNewScreen: $showNewScreen)
//                        .padding(.top, 100)
//                        .transition(.move(edge: .bottom))
//                     
//                }
//            }
//            .zIndex(2) //optional
            
            //METHOD 3 - ANIMATION OFFSET
            
            NewScreen(showNewScreen: $showNewScreen)
                .padding(.top, 100)
                .offset(y: showNewScreen ? 0 : UIScreen.main.bounds.height)
            
            
        }
        //METHOD 1 - SHEET
//        .sheet(isPresented: $showNewScreen) {
//            NewScreen()
//        }
        
    
        
    }
}


struct NewScreen: View {
    @Environment(\.dismiss) var dismiss // only works on modals
    
    //using binding to get the transition method 2 to work to dismiss
    @Binding var showNewScreen: Bool
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.pink.ignoresSafeArea()
            
            Button {
//                dismiss()
                withAnimation(.spring()) {
                    showNewScreen = false
                }
            } label: {
                Image(systemName: "xmark")
                    .foregroundStyle(.white)
                    .font(.largeTitle)
                    .bold()
                    .padding()
            }

        }
    }
}

#Preview {
    SSheetTransitionAnimationInPractice()
}
