//
//  SDatePicker.swift
//  SwiftUIBasics
//
//  Created by Ethan John Paguntalan on 1/28/25.
//

import SwiftUI

struct SDatePicker: View {
    @State private var selectedDate: Date = Date()
    let startingDate: Date = Calendar.current.date(from: DateComponents(year: 2020)) ?? Date()
    let endingDate: Date = Date()
    
    
    var formattedDate: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .short
        return formatter
        
    }
    
    
    var body: some View {
        
        VStack {
            Text("Selected Data is: ")
            Text(formattedDate.string(from: selectedDate))
                .font(.title)
            
            DatePicker("Select Date", selection: $selectedDate, in: startingDate...endingDate, displayedComponents: [.date])
        }

        
//        DatePicker("Select Date", selection: $selectedDate, displayedComponents: [.date ])
//            .tint(.red)
//            .datePickerStyle(.graphical)
        
        //Good for birthdate/ appointment

        
        
        
    }
}

#Preview {
    SDatePicker()
}
