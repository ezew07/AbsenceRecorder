//
//  Division.swift
//  AbsenceRecorder
//
//  Created by William Eze on 17/02/2024.
//

import Foundation

class Division{
    let code: String
    var students: [Student] = []
    var absences: [Absence] = []
    
    init(code: String) {
        self.code = code
    }
    
    func getAbsence(for date: Date) -> Absence? {
        return absences.first{
            let comparison = Calendar.current.compare($0.takeOn, to: date, toGranularity: .day)
            return comparison == .orderedSame
        }
    }
    
    func createAbsenceOrGetExistingIfAvailable(for date: Date) -> Absence{
        if let exisitingAbsence = getAbsence(for: date){
            return exisitingAbsence
        }
        else{
            let newAbsence = Absence(takeOn: date, students: students)
            absences.append(newAbsence)
            return newAbsence
        }
    }
    
    
    #if DEBUG
    static func createDivision(code: String, of size: Int) -> Division{
        let division = Division(code: code)
        for i in 1...size {
            let student = Student(firstname: "William\(i)", surname: "Eze", birthday: DateComponents(calendar: .current, year: 2007, month: 8, day: 19).date!)
            division.students.append(student)
        }
        return division
    }
    
    static let examples = [
        Division.createDivision(code: "vBY-1", of: 12), Division.createDivision(code: "ABC-1", of: 14), Division.createDivision(code: "DEF-2", of: 9), Division.createDivision(code: "GHI-3", of: 7), Division.createDivision(code: "JKL-4", of: 12), Division.createDivision(code: "MNO-5", of: 8), Division.createDivision(code: "PQR-6", of: 6), Division.createDivision(code: "STU-7", of: 15), Division.createDivision(code: "VWX-8", of: 4), Division.createDivision(code: "YZA-9", of: 13), Division.createDivision(code: "BCD-10", of: 3)
    ]
    #endif
    
}
