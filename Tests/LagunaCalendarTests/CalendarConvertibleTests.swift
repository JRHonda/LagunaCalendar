//
//  CalendarConvertibleTests.swift
//  LagunaCalendarTests
//
//  Created by Justin Honda on 12/31/21.
//

import XCTest
@testable import LagunaCalendar

class CalendarConvertibleTests: XCTestCase {

    let sut = CommonCalendarData.Conversions.self
    
    func test_NumberOfDaysInYear() {
        let numberOfDaysInOneYear = sut.InSeconds.oneYear / sut.InSeconds.oneDay
        
        XCTAssertEqual(numberOfDaysInOneYear, 365)
    }
    
    func test_NumberOfHoursInOneDay() {
        let numberOfHoursInOneDay = sut.InSeconds.oneDay / sut.InSeconds.oneHour
        
        XCTAssertEqual(numberOfHoursInOneDay, 24)
    }

}
