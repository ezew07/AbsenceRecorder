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
        loadFromFile()
    }
    
    func returnDivisionIndexInStateController(target: Division) -> Int?{
        for i in 0..<divisions.count{
            if divisions[i].code == target.code{
                return i
            }
        }
        return nil
    }
    
    func getFilePath(filename: String) -> URL{
        return FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0].appendingPathComponent(filename)
    }
    
    
    func loadFromFile() {
        if let loaded: [Division] = FileManager.default.load(filename: "divisions.json"){
            divisions = loaded
        }
    }
    
    func saveToFile() {
        FileManager.default.save(filename: "divisions.json", object: divisions)
        
    }
    
}

