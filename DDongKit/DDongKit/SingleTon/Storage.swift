//
//  Storage.swift
//  DDongKit
//
//  Created by 김동현 on 2021/08/23.
//

import Foundation

public class Storage {
    
    public static let shared = Storage()
    private static let userDefaults = UserDefaults.standard
    private init() {}
    
    // MARK: - Functions
    /// set value
    /// - Parameter value: UserDefaults에 저장 할 value.
    /// - Parameter key: value를 저장 할 key.
    public static func setValue(_ value: Any, key: String) {
        userDefaults.setValue(value, forKey: key)
    }
    
    /// get string
    /// - Parameter key: 저장된 value의 key.
    public static func getStringValue(key: String) -> String? {
        return userDefaults.string(forKey: key)
    }
    
    /// get bool
    /// - Parameter key: 저장된 value의 key.
    public static func getBooleanValue(key: String) -> Bool? {
        return userDefaults.bool(forKey: key)
    }
    
    /// get int
    /// - Parameter key: 저장된 value의 key.
    public static func getIntValue(key: String) -> Int? {
        return userDefaults.integer(forKey: key)
    }
    
    /// get double
    /// - Parameter key: 저장된 value의 key.
    public static func getDoubleValue(key: String) -> Double? {
        return userDefaults.double(forKey: key)
    }
    
    /// get float
    /// - Parameter key: 저장된 value의 key.
    public static func getFloatValue(key: String) -> Float? {
        return userDefaults.float(forKey: key)
    }
    
    /// get array
    /// - Parameter key: 저장된 value의 key.
    public static func getArrayValue(key: String) -> [Any]? {
        return userDefaults.array(forKey: key)
    }
    
    /// get dictionary
    /// - Parameter key: 저장된 value의 key.
    public static func getDictValue(key: String) -> [String: Any]? {
        return userDefaults.dictionary(forKey: key)
    }
    
    /// get data
    /// - Parameter key: 저장된 value의 key.
    public static func getDataValue(key: String) -> Data? {
        return userDefaults.data(forKey: key)
    }
}
