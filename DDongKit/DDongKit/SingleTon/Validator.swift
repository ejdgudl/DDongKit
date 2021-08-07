//
//  Validator.swift
//  DDongKit
//
//  Created by 김동현 on 2021/08/07.
//

import Foundation

public class Validator {
    
    public static let shared = Validator()
    private init() {}
    
    // MARK: - Constants
    // 이메일 검증
    private let emailRegEx: String = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
    // 비밀번호 검증
    private let pwdRegEx: String = "[A-Za-z0-9!_@$%^&+=]{8,20}"
    
    // MARK: - Functions
    /// validEmail
    /// - Parameter email: 유효성 검증을 시도할 이메일.
    /// - Returns: 정규표현식에 대한 유효성 검증 결과.
    public func validEmail(_ email: String) -> Bool {
        return email.vaildateRegex(emailRegEx)
    }
    
    /// validPwd
    /// - Parameter pwd: 유효성 검증을 시도할 비밀번호.
    /// - Returns: 정규표현식에 대한 유효성 검증 결과.
    public func validPwd(_ pwd: String) -> Bool {
        return pwd.vaildateRegex(pwdRegEx)
    }
    
}
