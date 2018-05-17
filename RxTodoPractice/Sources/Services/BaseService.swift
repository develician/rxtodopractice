//
//  BaseService.swift
//  RxTodoPractice
//
//  Created by 최동호 on 2018. 3. 30..
//  Copyright © 2018년 최동호. All rights reserved.
//


class BaseService {
    unowned let provider: ServiceProviderType
    
    init(provider: ServiceProviderType) {
        self.provider = provider
    }
}

