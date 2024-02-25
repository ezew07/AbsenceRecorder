//
//  RootTabView.swift
//  AbsenceRecorder
//
//  Created by William Eze on 19/02/2024.
//

import SwiftUI

struct RootTabView: View {
    
    var body: some View {
        TabView {
            DivisionsView()
                .tabItem {
                    Image(systemName: "square.and.pencil")
                    Text("Absences")
                }
            StatisticsView()
                .tabItem {
                    Image(systemName: "chart.line.uptrend.xyaxis")
                    Text("Statistics")
                }
        }
    }
}

#Preview {
    RootTabView()
        .environmentObject(StateController())

}
