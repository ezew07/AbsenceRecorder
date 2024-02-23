//
//  StatisticsView.swift
//  AbsenceRecorder
//
//  Created by William Eze on 19/02/2024.
//

import SwiftUI

struct StatisticsView: View {
    @EnvironmentObject var state: StateController
    var body: some View {
        NavigationStack{
            List{
                Section{
                    ForEach(state.divisions, id: \.code){ division in
                        Text("\(division.code)")
                    }
                }
            }
            .navigationTitle("Statistics")
        }
    }
}

#Preview {
    StatisticsView()
        .environmentObject(StateController())
}
