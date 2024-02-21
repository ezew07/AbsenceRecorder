//
//  DivisionItemView.swift
//  AbsenceRecorder
//
//  Created by William Eze on 17/02/2024.
//

import SwiftUI

struct DivisionItemView: View {
    @EnvironmentObject var state: StateController
    let divisions: [Division]
    var body: some View {
        List(){
            ForEach(state.divisions, id: \.code) { division in
                NavigationLink(destination: AbsenceView(division: division)){
                    HStack(){
                        Image(systemName: "\(division.students.count).circle")
                        Text("\(division.code)")
                    }
                }
            }
        }
    }
}

#Preview {
    DivisionItemView(divisions: Division.examples)
        .environmentObject(StateController())
}
