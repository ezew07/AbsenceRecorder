//
//  DivisionItemView.swift
//  AbsenceRecorder
//
//  Created by William Eze on 17/02/2024.
//

import SwiftUI

struct DivisionItemView: View {
    @EnvironmentObject var state: StateController
    let division: Division

    var body: some View {
        HStack(){
            Image(systemName: "\(division.students.count).circle")
            Text("\(division.code)")
        }
    }
}

#Preview {
    DivisionItemView(division: Division.examples[0])
        .environmentObject(StateController())
}
