//
//  File.swift
//  
//
//  Created by 张宇佳 on 2022/1/14.
//

import Foundation

import SwiftUI


public extension ButtonStyle where Self == ButtonBorderedStyle{
    static var submitBordered: ButtonBorderedStyle {
        return ButtonBorderedStyle(bgColor: .blue,textColor: .white,cornerRadius: 5)
    }
    static var plainBordered: ButtonBorderedStyle {
        return ButtonBorderedStyle(bgColor: .white,borderColor: .gray,cornerRadius: 5)
    }
    static var submitRounded: ButtonBorderedStyle {
        return ButtonBorderedStyle(bgColor: .blue,textColor: .white,cornerRadius: 50)
    }
    
    static var plainRounded: ButtonBorderedStyle {
        return ButtonBorderedStyle(bgColor: .white,borderColor: .gray,cornerRadius: 50)
    }
}

public struct ButtonBorderedStyle: ButtonStyle {
    
    var bgColor: Color?;
    var borderColor: Color?;
    var textColor: Color?;
    var cornerRadius: CGFloat?
    
    
    public func makeBody(configuration: Configuration) -> some View {
        ZStack{
            HStack(spacing: 0){
                configuration.label
            }
            .padding(.horizontal)
            .padding(.vertical,5)
        }
        .ifLet(bgColor, transform: {$0.background($1)})
        .ifLet(textColor, transform: {$0.foregroundColor($1)})
        .ifLet(borderColor, transform: {$0.border($1, width: 1)})
        .ifLet(cornerRadius, transform: {$0.cornerRadius($1)})
        .`if`(borderColor != nil && cornerRadius != nil && cornerRadius! > 0) { view in
            view.addBorder(borderColor!, width: 1, cornerRadius: cornerRadius!)
        }
        .opacity(configuration.isPressed ? 0.8 : 1.0)
        
    }
}
