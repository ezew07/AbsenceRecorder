//
//  StudentAbsence.swift
//  AbsenceRecorder
//
//  Created by William Eze on 24/02/2024.
//

import Foundation

class StudentAbsence: ObservableObject, Codable{
    
    let student: Student
    @Published var isAbsent: Bool = false
    
    init(student: Student) {
        self.student = student
    }
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        student = try container.decode(Student.self, forKey: .student)
        isAbsent = try container.decode(Bool.self    , forKey: .isAbsent)

    }
    
    private enum CodingKeys: CodingKey{
        case student, isAbsent
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(student, forKey: .student)
        try container.encode(isAbsent, forKey: .isAbsent)
    }
    
    #if DEBUG
    static let example: StudentAbsence = StudentAbsence(student: Student(firstname: "Andreas", surname: "Kwong", birthday: Date()))
    
    #endif
    
}
