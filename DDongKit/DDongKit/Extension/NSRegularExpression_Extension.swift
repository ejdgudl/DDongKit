//
//  NSRegularExpression_Extension.swift
//  DDongKit
//
//  Created by 김동현 on 2021/08/07.
//

import Foundation

public extension NSRegularExpression {
    
    /// convenience init
    /// - Parameter pattern: 정규 표현식 패턴.
    convenience init(_ pattern: String) {
        do {
            try self.init(pattern: pattern)
        } catch {
            preconditionFailure("잘못된 정규 표현식으로 인한 NSRegularExpression 초기화 실패")
        }
    }
    
    /// matches
    /// - Parameter string: 정규 표현식 검증을 시도할 String 값.
    /// - Returns: 정규표현식에 대한 유효성 검증 결과.
    func matches(_ string: String) -> Bool {
        let range = NSRange(location: 0, length: string.utf8.count)
        return firstMatch(in: string, options: [], range: range) != nil
    }
    
}
