//
//  NSObject.swift
//  DDongKit
//
//  Created by κΉλν on 2021/10/07.
//

import Foundation

public extension NSObject {
    /// Class Name(type is String)
    static var className: String {
        return String(describing: self)
    }
}
