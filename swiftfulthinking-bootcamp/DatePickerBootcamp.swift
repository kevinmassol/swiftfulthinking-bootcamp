//
//  DatePickerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by KEVIN on 21/12/2025.
//

import SwiftUI

struct DatePickerBootcamp: View {
    
    @State var selectedDate: Date = Date()
    let startingDate: Date = Calendar.current.date(from: DateComponents(year: 2018))!
    let endingDate: Date = Date()
    
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        formatter.timeStyle = .short
        return formatter
    }
    
    var body: some View {
        VStack {
            Text("SELECTED DATE IS :")
            Text(dateFormatter.string(from: selectedDate))
                .font(.title)
            
            DatePicker(
                "Select a Date",
                selection: $selectedDate,
                in: startingDate...endingDate
            )
            
            DatePicker(
                "Select a Date",
                selection: $selectedDate,
                displayedComponents: [.date, .hourAndMinute]
            )
            
            DatePicker("Select a Date", selection: $selectedDate)
                .tint(Color.red)
                .datePickerStyle(
                    CompactDatePickerStyle()
                    //                    GraphicalDatePickerStyle()
                    //                    WheelDatePickerStyle()
                )
        }
        .padding()
    }
}

#Preview {
    DatePickerBootcamp()
}
