//
//  File.swift
//  
//
//  Created by 张宇佳 on 2022/1/14.
//

import Foundation
import SwiftUI
public extension View{
    
    func addBorder<S>(_ content: S, width: CGFloat = 1, cornerRadius: CGFloat) -> some View where S : ShapeStyle {
        let roundedRect = RoundedRectangle(cornerRadius: cornerRadius)
        return clipShape(roundedRect)
            .overlay(roundedRect.strokeBorder(content, lineWidth: width))
    }
}

