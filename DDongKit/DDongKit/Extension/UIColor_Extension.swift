//
//  UIColor_Extension.swift
//  DDongKit
//
//  Created by 김동현 on 2021/10/05.
//

import UIKit

public extension UIColor {
    
    /// colorWithRGB
    /// - Parameters:
    ///   - red: red
    ///   - green: green
    ///   - blue: blue
    ///   - alpha: alpha
    /// - Returns: RGB 적용 Color
    static func colorWithRGB(red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat = 1) -> UIColor {
        return UIColor(red: red/255.0, green: green/255.0, blue: blue/255.0, alpha: alpha)
    }
    
}
