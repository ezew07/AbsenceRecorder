//
//  Date.swift
//  AbsenceRecorder
//
//  Created by William Eze on 17/02/2024.
//

import Foundation

extension Date{
    func getShortDate() -> String{
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        return formatter.string(from: self)
    }
    
    func decrementDateByOne() -> Date {
        return Calendar.current.date(byAdding: .day, value: -1, to: self) ?? Date()
    }
    func incrementDateByOne() -> Date {
        return Calendar.current.date(byAdding: .day, value: 1, to: self) ?? Date()
    }
    
}



