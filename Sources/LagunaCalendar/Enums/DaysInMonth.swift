//
//  DaysInMonth.swift
//  LagunaCalendar
//
//  Created by Justin Honda on 12/31/21.
//

import Foundation

public enum DaysInMonth: String, CaseIterable {
    case january
    case february
    case march
    case april
    case may
    case june
    case july
    case august
    case september
    case october
    case november
    case december
        
    public func numberOfDays() -> Int {
        switch self {
            case .january, .march, .may, .july, .august, .october, .december:
                return 31
            case .april, .june, .september, .november:
                return 30
            case .february:
                return Calendar.isInLeapYear ? 29 : 28
        }
    }
    
    public static func buildNumberOfDaysPerMonthArray() -> [Int] {
        self.allCases.map { $0.numberOfDays() }
    }
    
    public static func buildAbbreviatedMonthsList() -> [String] {
        self.allCases.map { $0.rawValue.prefix(3).capitalized }
    }
}
