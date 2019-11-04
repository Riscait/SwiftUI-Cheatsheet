//
//  UserDefault.swift
//  SwiftUI-Cheatsheet
//
//  Created by 村松龍之介 on 2019/11/03.
//  Copyright © 2019 村松龍之介. All rights reserved.
//

import Foundation

@propertyWrapper
struct UserDefault<T> {
    
    let key: String
    let defalutValue: T
    
    init(_ key: String, defaultValue: T) {
        self.key = key
        self.defalutValue = defaultValue
    }
    
    var wrappedValue: T {
        get {
            UserDefaults.standard.object(forKey: key) as? T ?? defalutValue
        }
        set {
            UserDefaults.standard.set(newValue, forKey: key)
        }
    }
}
