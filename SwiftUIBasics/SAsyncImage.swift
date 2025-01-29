//
//  SAsyncImage.swift
//  SwiftUIBasics
//
//  Created by Ethan John Paguntalan on 1/29/25.
//

import SwiftUI

struct SAsyncImage: View {
    
    let url = URL(string: "https://picsum.photos/200")
    
    var body: some View {
        AsyncImage(url: url) { image in
            image
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 300)
                .clipShape(RoundedRectangle(cornerRadius: 40))
        } placeholder: {
            ProgressView()
        }
        
        //if you wanted to handle failure fetching
        AsyncImage(url: url) { phase in
            switch phase {
            case .empty:
                ProgressView()
            case .success(let image):
                image
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 300)
                    .clipShape(RoundedRectangle(cornerRadius: 40))
            case .failure:
                Image(systemName: "questionmark")
                    .font(.largeTitle)
            default:
                Image(systemName: "questionmark")
                    .font(.largeTitle)
            }
        }
    }
}

#Preview {
    SAsyncImage()
}
