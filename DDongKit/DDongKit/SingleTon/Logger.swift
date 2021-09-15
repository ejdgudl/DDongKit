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
    public static func print(_ message: String, type: OSLogType, fileName: String?, functionName: String, line: Int) {
        os_log("%@", type: type, message)
        guard fileName != nil else { return }
        Swift.print("👉🏻 fileName: \(fileName ?? "")\n👉🏻 functionName: \(functionName) \n👉🏻 line: \(line)")
    }
}
