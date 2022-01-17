//
//  File.swift
//  
//
//  Created by 张宇佳 on 2022/1/13.
//

import Foundation

public extension NSOrderedSet {
    func toArray<T>(_ type: T.Type) -> [T] {
        return self.map { item in
            return item as! T
        }
    }
}
