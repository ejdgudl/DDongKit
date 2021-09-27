//
//  Navigation.swift
//  DDongKit
//
//  Created by 김동현 on 2021/09/27.
//

import UIKit

public extension UIViewController {
    
    /// setBackgroundColor
    /// - Parameter color: nav bg color.
    /// - Parameter shadowHidden: shadow hidden.
    func setBackgroundColor(_ color: UIColor, shadowHidden: Bool) {
        self.navigationController?.navigationBar.barTintColor = color
        if color == UIColor.clear {
            self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        } else {
            self.navigationController?.navigationBar.isTranslucent = false
        }
        if shadowHidden {
            self.navigationController?.navigationBar.shadowImage = UIImage()
        }
    }
    
}
