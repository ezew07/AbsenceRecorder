//
//  AbsenceItemView.swift
//  AbsenceRecorder
//
//  Created by William Eze on 24/02/2024.
//

import SwiftUI

struct AbsenceItemView: View {
    @ObservedObject var studentAbsence: StudentAbsence
    
    var body: some View {
        HStack{
            Text(studentAbsence.student.firstname)
            Spacer()
            if studentAbsence.isAbsent{
                Button(action: {studentAbsence.isAbsent.toggle()}){
                    Text("❌")
                }
            }
            else {
                Button(action: {studentAbsence.isAbsent.toggle()}){
                    Text("✅")
                }
            }
        }
        
    }
}

#Preview {
    AbsenceItemView(studentAbsence: StudentAbsence.example)
}
