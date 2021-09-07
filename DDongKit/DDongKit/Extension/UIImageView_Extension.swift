//
//  UIImageView_Extension.swift
//  DDongKit
//
//  Created by 김동현 on 2021/09/07.
//

import UIKit
import SDWebImage

public extension UIImageView {
    func setImageView(_ url: String?) {
        self.image = nil
        let url = URL(string: url ?? "")
        sd_setImage(with: url, placeholderImage: nil, options: [.avoidAutoSetImage], completed: { im, er, ca, url in
            self.image = im
        })
    }
}

