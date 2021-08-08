//
//  String_Extension.swift
//  DDongKit
//
//  Created by 김동현 on 2021/08/07.
//

import Foundation

public extension String {
    
    // MARK: - Variable
    // localized
    var localized: String {
        return NSLocalizedString(self, tableName: "Localizable", value: self, comment: "")
    }
    
}

extension String {
    
    /// vaildateRegex
    /// - Parameter regex: 정규표현식 패턴.
    /// - Returns: 정규표현식에 대한 유효성 검증 결과.
    func vaildateRegex(_ regex: String) -> Bool {
        let regex = NSRegularExpression(regex)
        return regex.matches(self)
    }
    
}
