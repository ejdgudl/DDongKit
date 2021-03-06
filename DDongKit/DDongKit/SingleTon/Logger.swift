//
//  Logger.swift
//  DDongKit
//
//  Created by κΉλν on 2021/09/15.
//

import Foundation
import os

public class Logger {
    public static func print(_ message: String, type: OSLogType, fileName: String?, functionName: String, line: Int) {
        os_log("%@", type: type, message)
        guard fileName != nil else { return }
        Swift.print("ππ» fileName: \(fileName ?? "")\nππ» functionName: \(functionName) \nππ» line: \(line)")
    }
}
