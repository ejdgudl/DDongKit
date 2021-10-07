//
//  Layer.swift
//  DDongKit
//
//  Created by 김동현 on 2021/10/02.
//

import UIKit

public extension UIView {
    /// roundCorners
    /// - Parameter corners: corners (ex. layerMinXMinYCorner, layerMaxXMinYCorner, layerMinXMaxYCorner, layerMaxXMaxYCorner)
    /// - Parameter radius: radius value
    func roundCorners(corners: CACornerMask, radius: CGFloat) {
        clipsToBounds = true
        layer.cornerRadius = radius
        layer.maskedCorners = CACornerMask(arrayLiteral: corners)
    }
}
