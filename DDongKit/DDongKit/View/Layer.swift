//
//  Layer.swift
//  DDongKit
//
//  Created by 김동현 on 2021/10/02.
//

import UIKit

public extension UIView {
    
    /// roundCorners
    /// - Parameter corners: corners (ex. top, left, right, bottom)
    /// - Parameter radius: radius value
    func roundCorners(_ corners: UIRectCorner, radius: CGFloat) {
        let path = UIBezierPath(roundedRect: bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        layer.mask = mask
    }
}
