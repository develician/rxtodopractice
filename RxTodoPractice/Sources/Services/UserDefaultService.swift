//
//  UserDefaultService.swift
//  RxTodoPractice
//
//  Created by 최동호 on 2018. 3. 30..
//  Copyright © 2018년 최동호. All rights reserved.
//

import Foundation

extension UserDefaultsKey {
    static var tasks: Key<[[String: Any]]> { return "tasks" }
}

protocol UserDefaultsServiceType {
    func value<T>(forKey key: UserDefaultsKey<T>) -> T?
    func set<T>(value: T?, forKey key: UserDefaultsKey<T>)
}

final class UserDefaultsService: BaseService, UserDefaultsServiceType {
    
    private var defaults: UserDefaults {
        return UserDefaults.standard
    }
    
    func value<T>(forKey key: UserDefaultsKey<T>) -> T? {
        return self.defaults.value(forKey: key.key) as? T
    }
    
    func set<T>(value: T?, forKey key: UserDefaultsKey<T>) {
        self.defaults.set(value, forKey: key.key)
        self.defaults.synchronize()
    }

}
