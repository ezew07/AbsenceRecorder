//
//  AbsenceView.swift
//  AbsenceRecorder
//
//  Created by William Eze on 17/02/2024.
//

import SwiftUI

struct AbsenceView: View {
    let absence: Absence
    
    var body: some View {
        NavigationStack{
            List(absence.studentAbsences, id: \.self.student.firstname){ studentAbsence in
                AbsenceItemView(studentAbsence: studentAbsence)
            }
            .navigationTitle("Absences")
            .padding(.top, 0)
        }
    }
}
#Preview {
    AbsenceView(absence: Absence.example)
}
