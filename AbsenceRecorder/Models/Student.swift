//
//  Student.swift
//  AbsenceRecorder
//
//  Created by William Eze on 17/02/2024.
//

import Foundation

class Student {
    let firstname: String
    let surname: String
    let birthday: Date
    
    init(firstname: String, surname: String, birthday: Date) {
        self.firstname = firstname
        self.surname = surname
        self.birthday = birthday
    }
    
    #if DEBUG
    static let examples = [
        Student(firstname: "Andreas", surname: "Kwong", birthday: DateComponents(calendar: .current, year: 2007, month: 8, day: 19).date!)
    ]
    
    #endif
}
