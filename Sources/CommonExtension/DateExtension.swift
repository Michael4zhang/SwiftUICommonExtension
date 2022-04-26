//
//  File.swift
//  
//
//  Created by 张宇佳 on 2022/1/13.
//

import Foundation
import SwiftUI


public extension Date{
    func formatted(forPattern pattern: String, locale: Locale? = Locale(identifier: "zh_CN")) -> String {
        let dateFormatter = DateFormatter()
        //dateStyle和timeStyle默认都是none，两者至少有一个
        //        dateFormatter.dateStyle = .medium
        //        dateFormatter.timeStyle = .short
        dateFormatter.dateFormat = pattern;
        //改成中文
        //        dateFormatter.locale = locale;
        //        print(dateFormatter.string(from: Date())) //2019年5月10日 下午10:22
        return dateFormatter.string(from: self)
    }
    
    static func parse(forPattern pattern: String, value: String) -> Date{
        let formatter = DateFormatter();
        formatter.dateFormat = pattern;
        return formatter.date(from: value)!
    }
}
