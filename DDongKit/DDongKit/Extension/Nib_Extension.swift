//
//  Nib_Extension.swift
//  DDongKit
//
//  Created by 김동현 on 2022/01/08.
//

import UIKit

public extension UIView {
    
    static func initFromNib() -> Self? {
        let nibName = String(describing: self)
        guard let _ = Bundle(for: self).path(forResource: nibName, ofType: "nib") else {
            return nil
        }
        return Bundle(for: self).loadNibNamed(nibName, owner: nil, options: nil)?.first as? Self
    }

}

public extension UIViewController {
    
    static func initFromNib() -> Self? {
        let nibName = String(describing: self)
        return self.init(nibName: nibName, bundle: Bundle(for: self))
    }
    
}
