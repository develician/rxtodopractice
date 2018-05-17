//
//  ModelType.swift
//  RxTodoPractice
//
//  Created by 최동호 on 2018. 3. 30..
//  Copyright © 2018년 최동호. All rights reserved.
//

import Then

protocol Identifiable {
    associatedtype Identifier: Equatable
    var id: Identifier { get }
}

protocol ModelType: Then {
}

extension Collection where Self.Iterator.Element: Identifiable {
    
    func index(of element: Self.Iterator.Element) -> Self.Index? {
        return self.index { $0.id == element.id }
    }
    
}

