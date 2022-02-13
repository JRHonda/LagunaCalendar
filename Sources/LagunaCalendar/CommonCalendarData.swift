//
//  CommonCalendarData.swift
//  LagunaCalendar
//
//  Created by Justin Honda on 12/31/21.
//

import Foundation

public enum CommonCalendarData {

    public static let leapYearInterval: TimeInterval = 4
    
    public enum Conversions {
        
        public enum InSeconds {
            public static let oneYear: TimeInterval = 31536000
            public static let oneDay: TimeInterval  = 86400
            public static let oneHour: TimeInterval = 3600
        }
        
    }
    
}
