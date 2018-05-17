//
//  UserDefaultsKey.swift
//  RxTodoPractice
//
//  Created by 최동호 on 2018. 3. 30..
//  Copyright © 2018년 최동호. All rights reserved.
//

struct UserDefaultsKey<T> {
    typealias Key<T> = UserDefaultsKey<T>
    let key: String
}

extension UserDefaultsKey: ExpressibleByStringLiteral {
    
    public init(unicodeScalarLiteral value: StringLiteralType){
        self.init(key: value)
    }
    
    public init(extendedGraphemeClusterLiteral value: StringLiteralType){
        self.init(key: value)
    }
    
    public init(stringLiteral value: StringLiteralType) {
        self.init(key: value)
    }
}

