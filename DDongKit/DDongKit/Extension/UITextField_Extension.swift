//
//  UITextField_Extension.swift
//  DDongKit
//
//  Created by κΉλν on 2021/09/25.
//

import UIKit

public extension UITextField {
    /// addLeftPadding
    /// - Parameter padding: TextField left padding
    func addLeftPadding(_ padding: CGFloat) {
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: padding, height: self.frame.height))
        self.leftView = paddingView
        self.leftViewMode = ViewMode.always
    }
}
