//
//  AbsenceView.swift
//  AbsenceRecorder
//
//  Created by William Eze on 17/02/2024.
//

import SwiftUI

struct AbsenceView: View {
    let division: Division
    
    var body: some View {
        NavigationStack{
            VStack{
                Color.blue
            }
                .navigationTitle("Absences: \(division.code)")
                .toolbar{
                    ToolbarItem(placement: .bottomBar) {
                        HStack{
                            Button(action: {}){
                                HStack{
                                    Image(systemName: "minus.circle")
                                    Text("Delete division")
                                }
                                .foregroundStyle(.red)
                            }
                        }
                    }
                }
        }
    }
}

#Preview {
    AbsenceView(division: Division.examples[0])
}
