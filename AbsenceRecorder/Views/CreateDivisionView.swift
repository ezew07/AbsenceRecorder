//
//  CreateDivisionView.swift
//  AbsenceRecorder
//
//  Created by William Eze on 22/02/2024.
//

import SwiftUI

struct CreateDivisionView: View {
    @EnvironmentObject var state: StateController
    @Binding var isPresented: Bool
    @State private var newDivisionCode = ""
    @State private var newDivisionSize = ""
    var toggleSaveButton: Bool {
        if newDivisionCode.count > 0 && Int(newDivisionSize) ?? 0 > 0{
            return true
        }
        return false
    }
    
    var body: some View {
        NavigationStack{
            Form{
                Section{
                    TextField("Enter division code", text: $newDivisionCode)
                        .autocorrectionDisabled(true)
                    TextField("Class size", text: $newDivisionSize)
                        .keyboardType(.numberPad)
                }
            }
            .navigationTitle("Create divison")
            .toolbar{
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action: {state.divisions.append(Division.createDivision(code: newDivisionCode, of: Int(newDivisionSize)!));
                        isPresented = false
                    }, label: {
                        HStack{
                            Text("Save")
                                .padding(5)}
                    })
                    .disabled(!toggleSaveButton)
                }
            }
        }
    }
}

#Preview{
    CreateDivisionView(isPresented: .constant(true))
}
