//
//  Calendar+extensions.swift
//  LagunaCalendar
//
//  Created by Justin Honda on 12/31/21.
//

import Foundation

public extension Calendar {
    static var currentYear:  Int { self.autoupdatingCurrent.component(.year, from: .now) }
    static var currentMonth: Int { self.autoupdatingCurrent.component(.month, from: .now) }
    static var currentDay:   Int { self.autoupdatingCurrent.component(.day, from: .now) }
    
    static private var leapYears: LazySequence<[Int]> { [2024, 2028, 2032, 2036, 2040, 2044, 2048, 2052, 2056, 2060].lazy }
    static var isInLeapYear: Bool { leapYears.contains(where: { $0 == currentYear }) }
}
