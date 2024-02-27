//
//  DivisionTests.swift
//  AbsenceRecorderTests
//
//  Created by William Eze on 25/02/2024.
//

import XCTest
@testable import AbsenceRecorder


final class DivisionTests: XCTestCase {
    func testGetAbsenceForDivisionWithAbsenceOnThatDayReturnsAnAbsence() throws{
        // arrange
        let division = Division(code: "TestDiv")
        let dateToday = Date()
        let dateLaterToday = Date(timeIntervalSinceNow: 100)
        let dateTomorrow = Date(timeIntervalSinceNow: 5467652043564)
        let absence1 = Absence(takenOn: dateTomorrow, students: Student.examples)
        let absence2 = Absence(takenOn: dateToday, students: Student.examples)
        division.absences.append(absence1)
        division.absences.append(absence2)

        //act
        let actual = division.getAbsence(for: dateLaterToday)
        //assert
        XCTAssertNotNil(actual)
        if let actualNotNil = actual{
            XCTAssertEqual(actualNotNil.takenOn, absence2.takenOn)
        }
    }
    
    func createAbsenceOrGetExistingIfAvailable(for date: Date) throws {
        // arange
        let division = Division(code: "TestDiv")
        let dateToday = Date()
        let dateTomorrow = Date(timeIntervalSinceNow: 5467652043564)
        //act
        let actual = division.getAbsence(for: dateToday)
        if actual != nil{
            let unwrappedActual = actual
        }
        else{

        }
        
        //assert
    }
    

}
