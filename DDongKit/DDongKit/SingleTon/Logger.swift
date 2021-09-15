//
//  Logger.swift
//  DDongKit
//
//  Created by 김동현 on 2021/09/15.
//

import Foundation
import os

import Foundation

public class Logger {
    public static func print(_ message: StaticString, type: OSLogType, fileName: String?, functionName: String, line: Int) {
        os_log(message, type: type)
        guard fileName != nil else { return }
        Swift.print("👉🏻 fileName: \(fileName ?? "")\n👉🏻 functionName: \(functionName) \nline: \(line)")
    }
}
