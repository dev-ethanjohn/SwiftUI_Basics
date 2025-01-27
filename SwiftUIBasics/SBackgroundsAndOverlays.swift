//
//  SBackgroundsAndOverlays.swift
//  SwiftUIBasics
//
//  Created by Ethan John Paguntalan on 1/27/25.
//

import SwiftUI

struct SBackgroundsAndOverlays: View {
    var body: some View {
        /*
        Text("Hello, World!")
            .background(
                //  Color.red
                //  LinearGradient(colors: [.green, .blue], startPoint: .top, endPoint: .bottom)
                Circle()
                    .fill(
                        LinearGradient(colors: [.green, .blue], startPoint: .top, endPoint: .bottom)
                    )
                    .frame(width: 100, height: 100)
            )
            .background(
                Circle()
                    .fill(Color.green)
                    .frame(width: 120, height: 120)
                
            )
        */
        
        /*
        Circle()
            .fill(.pink)
            .frame(width: 100, height: 100)
            .overlay {
                Text("1")
                    .font(.largeTitle)
                    .foregroundStyle(.white)
                    .bold()
            }
            .background(
                Circle()
                    .fill(Color.purple)
                    .frame(width: 110, height: 110)
            )
         */
        
        /*
        Rectangle()
            .frame(width: 100, height: 100)
            .overlay(alignment: .bottomLeading) {
                Rectangle()
                    .fill(.blue)
                    .frame(width: 50, height: 50)
            }
            .background(alignment: .center) {
                Rectangle()
                    .fill(.red)
                    .frame(width: 150, height: 150)
            }
         */
        Image(systemName: "heart.fill")
            .font(.system(size: 40))
            .foregroundStyle(.white)
            .background(
                Circle()
                    .fill(
                        LinearGradient(colors: [Color.green, Color.blue], startPoint: .topLeading, endPoint: .bottomTrailing)
                    )
                    .frame(width: 100, height: 100)
                    .shadow(color: Color.black.opacity(0.4), radius: 3, y: 4)
                    .overlay(alignment: .bottomTrailing) {
                        Circle()
                            .fill(.white)
                            .frame(width: 35, height: 35)
                            .shadow(color: Color.black.opacity(0.2), radius: 2, y: 3)
                            .overlay {
                                Text("4")
                                    .font(.headline)
                                    .foregroundStyle(.red)
                                    .bold()
                            }
                       
                    }
            )
           
            
        
    }
}

#Preview {
    SBackgroundsAndOverlays()
}
