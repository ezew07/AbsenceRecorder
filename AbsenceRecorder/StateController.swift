//
//  StateController.swift
//  AbsenceRecorder
//
//  Created by William Eze on 19/02/2024.
//

import Foundation

class StateController: ObservableObject {
    @Published var divisions: [Division]
    
    init() {
        divisions = Division.examples
    }
}

