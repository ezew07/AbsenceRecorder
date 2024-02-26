//
//  Absence.swift
//  AbsenceRecorder
//
//  Created by William Eze on 24/02/2024.
//

import Foundation

class Absence: Codable {
    let takenOn: Date
    let studentAbsences: [StudentAbsence]
    
    init(takenOn: Date, students: [Student]) {
        self.takenOn = takenOn
        self.studentAbsences = students.map {
            StudentAbsence(student: $0)
        }
    }
    
    #if DEBUG
    static let example = Absence(takenOn: Date(), students: Student.examples)
    #endif
    
    
}

