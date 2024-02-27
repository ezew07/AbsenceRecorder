//
//  CreateStudentView.swift
//  AbsenceRecorder
//
//  Created by William Eze on 26/02/2024.
//

import SwiftUI

struct CreateStudentView: View {
    @EnvironmentObject var state: StateController
    @Binding var isPresented: Bool
    @State private var newStudentFirstname = ""
    @State private var newStudentLastname = ""
    @State private var newStudentBirthday = Date()
    
    @Binding var currentDivision: Division
    
    var body: some View {
        NavigationStack{
            Form{
                Section {
                    TextField("Firstname", text: $newStudentFirstname)
                    TextField("Lastname", text: $newStudentLastname)
                    DatePicker("Birthday", selection: $newStudentBirthday, displayedComponents: .date)
                }
            }
            .navigationTitle("Create new student")
            .toolbar{
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action: {
                        currentDivision.students.append(Student(firstname: newStudentFirstname, surname: newStudentLastname, birthday: newStudentBirthday))
                        isPresented = false
                        
                    }){
                        Text("Save")
                    }
                }
            }
        }
    }
    
}

#Preview {
    CreateStudentView(isPresented: .constant(true), currentDivision: .constant(Division.examples[0]))
        .environmentObject(StateController())
}
