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
    var body: some View {
        NavigationView{
            DivisionItemView(divisions: Division.examples)
                .navigationTitle("\(currentDate.getShortDate())")
                .toolbar {
                ToolbarItem(placement: .topBarLeading){
                    Button(action:{currentDate = currentDate.decrementDateByOne()}) {
                            Image(systemName: "arrow.backward")
                        }
                }
                ToolbarItem(placement: .topBarTrailing){
                    Button(action:{currentDate = currentDate.incrementDateByOne()}) {
                        Image(systemName: "arrow.forward")
                    }
                }
            }
        }
    }
}

#Preview {
    DivisionsView()
        .environmentObject(StateController())

}
