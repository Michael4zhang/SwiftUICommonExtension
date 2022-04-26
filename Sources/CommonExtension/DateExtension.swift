//
//  File.swift
//  
//
//  Created by 张宇佳 on 2022/1/13.
//

import Foundation
import SwiftUI


public extension Date{
    func formatted(forPattern pattern: String, locale: Locale? = Locale(identifier: "zh_CN"), timeZone: TimeZone? = NSTimeZone.system) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = pattern;
        dateFormatter.locale = locale;
        dateFormatter.timeZone = NSTimeZone.system;
        return dateFormatter.string(from: self)
    }
    
    
    
    
    static func parse(forPattern pattern: String, value: String) -> Date{
        let formatter = DateFormatter();
        formatter.dateFormat = pattern;
        return formatter.date(from: value)!
    }
}
