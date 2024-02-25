//
//  StudentAbsence.swift
//  AbsenceRecorder
//
//  Created by William Eze on 24/02/2024.
//

import Foundation

class StudentAbsence: ObservableObject{
    
    let student: Student
    @Published var isAbsent: Bool = false
    
    init(student: Student) {
        self.student = student
    }
    
    #if DEBUG
    static let example: StudentAbsence = StudentAbsence(student: Student(firstname: "Andreas", surname: "Kwong", birthday: Date()))
    
    #endif
    
}
