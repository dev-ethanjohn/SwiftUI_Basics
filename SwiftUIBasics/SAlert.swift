//
//  SAlert.swift
//  SwiftUIBasics
//
//  Created by Ethan John Paguntalan on 1/28/25.
//

import SwiftUI

struct SAlert: View {
    @State private var bgColor: Color = .yellow
    @State private var showAlert: Bool = false
    
//    @State private var alertTitle: String = ""
//    @State private var alertMessage: String = ""
    @State private var alertType: CustomAlert? = nil
    
    enum CustomAlert {
       case success, error
    }
    
    var body: some View {
        ZStack {
            bgColor.ignoresSafeArea()
            
            VStack {
                Button {
//                    alertTitle = "ERROR UPLOADING VIDEO"
//                    alertMessage = "The video could not be uploaded"
                    alertType = .error
                    showAlert.toggle()
                } label: {
                    Text("buTTON 1")
                }
                
                Button {
//                    alertTitle = "SUCCESSFULLY UPLOADED VIDEO"
//                    alertMessage = "The video is uploaded 😊"
                    alertType = .success
                    showAlert.toggle()
                } label: {
                    Text("BUTTON 2")
                }
            }
            .alert(isPresented: $showAlert) {
    //            Alert(title: Text("There was an alert"))
                getAlert()
            }
          
        }

    }
    
    func getAlert() -> Alert {
        //        Alert(title: Text("There was an error!"), message: Text("Please be cautious"), primaryButton: .destructive(Text("Delete"), action: {
        //            //action
        //            bgColor = .orange
        //        }), secondaryButton: .default(Text("Cancel")))
        
        //        Alert(title: Text(alertTitle), message: Text(alertMessage), dismissButton: .default(Text("Okay")))
        
        switch alertType {
        case .success:
            return Alert(title: Text("SUCCESS"), message: Text("The video is uploaded 😊"), dismissButton: .default(Text("Okay")))
            
        case .error:
            return Alert(title: Text("ERROR"), message: Text("The video wasn't uploaded"), dismissButton: .default(Text("Okay"), action: {
                bgColor = .green
            }))
        default:
            return Alert(title: Text("Error"))
            
        }
    }
}

#Preview {
    SAlert()
}
