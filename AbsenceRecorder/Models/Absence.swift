//
//  Absence.swift
//  AbsenceRecorder
//
//  Created by William Eze on 24/02/2024.
//

import Foundation

class Absence {
    let takeOn: Date
    let studentAbsences: [StudentAbsence]
    
    init(takeOn: Date, students: [Student]) {
        self.takeOn = takeOn
        self.studentAbsences = students.map {
            StudentAbsence(student: $0)
        }
    }
    
    #if DEBUG
    static let example = Absence(takeOn: Date(), students: Student.examples)
    #endif
    
    
}

