//
//  AbsenceRecorderApp.swift
//  AbsenceRecorder
//
//  Created by William Eze on 17/02/2024.
//

import SwiftUI

@main
struct AbsenceRecorderApp: App {
    var body: some Scene {
        WindowGroup {
            RootTabView()
                .environmentObject(StateController())
        }
    }
}
