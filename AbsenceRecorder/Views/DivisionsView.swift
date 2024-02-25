//
//  ContentView.swift
//  AbsenceRecorder
//
//  Created by William Eze on 17/02/2024.
//

import SwiftUI

struct DivisionsView: View {
    @EnvironmentObject var state: StateController
    @State private var currentDate: Date = Date()
    @State private var toggleCreateDivision = false

    var body: some View {
        NavigationView{
            List(state.divisions, id: \.self.code){ division in
                NavigationLink(destination: AbsenceView(absence: division.createAbsenceOrGetExistingIfAvailable(for: currentDate))){
                    DivisionItemView(division: division)
                }
            }
                .navigationTitle("\(currentDate.getShortDate())")
                .toolbar {                    ToolbarItem(placement: .topBarLeading){
                        Button(action:{currentDate = currentDate.decrementDateByOne()}) {
                            Image(systemName: "arrow.backward")
                        }
                    }
                    ToolbarItem(placement: .topBarTrailing){
                        Button(action:{currentDate = currentDate.incrementDateByOne()}) {
                            Image(systemName: "arrow.forward")
                        }
                    }
                    ToolbarItem(placement: .principal){
                        Button(action:{toggleCreateDivision.toggle()}) {
                            Image(systemName: "plus.square.fill.on.square.fill")
                        }
                    }
                }
                .sheet(isPresented: $toggleCreateDivision, content: {
                    CreateDivisionView(isPresented: $toggleCreateDivision)
                })

        }
    }
}

#Preview {
    DivisionsView()
        .environmentObject(StateController())

}
