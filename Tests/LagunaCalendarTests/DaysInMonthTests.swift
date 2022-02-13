//
//  DaysInMonthTests.swift
//  LagunaCalendarTests
//
//  Created by Justin Honda on 12/31/21.
//

import XCTest
@testable import LagunaCalendar

final class DaysInMonthTests: XCTestCase {

    func test_NumberOfMonths() {
        let numberOfMonths = DaysInMonth.allCases.count
        
        XCTAssertEqual(numberOfMonths, 12)
    }
    
    func test_LeapYearImplementation() {
        let numberOfDaysForNonLeapYearInFebruary = DaysInMonth.february.numberOfDays()
        
        XCTAssertEqual(numberOfDaysForNonLeapYearInFebruary, Calendar.isInLeapYear ? 29 : 28)
    }
    
    func test_MonthsListIsInCorrectOrder() {
        let monthsList = DaysInMonth.buildAbbreviatedMonthsList()
        
        let expectedMonthsList = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"]
        
        XCTAssertEqual(monthsList, expectedMonthsList)
    }
    
    func test_DayCountInMonthIsCorrect() {
        let dayCountsInMonthsArray = DaysInMonth.buildNumberOfDaysPerMonthArray()
        
        let expectedDayCountsInMonthArray = [31, Calendar.isInLeapYear ? 29 : 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
        
        XCTAssertEqual(dayCountsInMonthsArray, expectedDayCountsInMonthArray)
    }
    
}
