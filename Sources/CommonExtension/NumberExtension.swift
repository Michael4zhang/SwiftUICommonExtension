//
//  File.swift
//  
//
//  Created by 张宇佳 on 2022/1/13.
//

import Foundation
import SwiftUI

public extension Int {
    /*这是一个内置函数
     lower : 内置为 0，可根据自己要获取的随机数进行修改。
     upper : 内置为 UInt32.max 的最大值，这里防止转化越界，造成的崩溃。
     返回的结果： [lower,upper) 之间的半开半闭区间的数。
     */
    static func randomIntNumber(lower: Int = 0,upper: Int = Int(UInt32.max)) -> Int {
        return lower + Int(arc4random_uniform(UInt32(upper - lower)))
    }
    /**
     生成某个区间的随机数
     */
    static func randomIntNumber(range: Range<Int>) -> Int {
        return randomIntNumber(lower: range.lowerBound, upper: range.upperBound)
    }
}

/**
 单精度的随机数
 */
public extension Float {
    static func randomFloatNumber(lower: Float = 0,upper: Float = 100, scale: Int? = 2) -> Float {
        let num = (Float(arc4random()) / Float(UInt32.max)) * (upper - lower) + lower
        if let scale = scale {
            return Float(String(format: "%.\(scale)f", num))!
        }
        return num;
    }
}


/**
 CGFloat 类型的随机数
 不支持Scale
 */
public extension CGFloat {
    static func randomCGFloatNumber(lower: CGFloat = 0,upper: CGFloat = 1) -> CGFloat {
        return  CGFloat(Float.randomFloatNumber(lower: Float(lower), upper: Float(upper)));
    }
}


public extension Double {
    static func randomDoubleNumber(lower: Double = 0,upper: Double = 100, scale: Int? = 2) -> Double {
        let num = (Double(arc4random())/Double(UInt32.max))*(upper - lower) + lower
        if let scale = scale {
            return Double(String(format: "%.\(scale)f", num))!
        }
        return num;
    }
}


