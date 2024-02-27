//
//  AbsenceView.swift
//  AbsenceRecorder
//
//  Created by William Eze on 17/02/2024.
//

import SwiftUI

struct AbsenceView: View {
    let absence: Absence
    @State private var toggleCreateStudent = false

    var body: some View {
        NavigationStack{
            List(absence.studentAbsences, id: \.self.student.firstname){ studentAbsence in
                AbsenceItemView(studentAbsence: studentAbsence)
            }
            .navigationTitle("Absences")
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Button(action: {toggleCreateStudent.toggle()}){
                        Image(systemName: "plus.square.fill.on.square.fill")
                    }
                }
            }
            .sheet(isPresented: $toggleCreateStudent, content: {
                CreateStudentView()
            })
        }
    }
}
#Preview {
    AbsenceView(absence: Absence.example)
}
