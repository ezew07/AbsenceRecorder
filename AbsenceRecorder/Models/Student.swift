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
}
