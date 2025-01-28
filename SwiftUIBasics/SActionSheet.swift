//
//  SActionSheet.swift
//  SwiftUIBasics
//
//  Created by Ethan John Paguntalan on 1/28/25.
//

import SwiftUI

struct SActionSheet: View {
    @State private var showActionSheet: Bool = false
    var body: some View {
        Button {
            showActionSheet.toggle()
        } label: {
            Text("Click Me")
        }
        .confirmationDialog("Choose an Option", isPresented: $showActionSheet) {
            getActionSheetButtons()
        }
    }
    
    @ViewBuilder
      func getActionSheetButtons() -> some View {
          Button("Option 1") {
              print("Option 1 selected")
          }
          Button("Option 2") {
              print("Option 2 selected")
          }
          Button("Cancel", role: .cancel) {
              print("Action sheet dismissed")
          }
      }
}

#Preview {
    SActionSheet()
}
