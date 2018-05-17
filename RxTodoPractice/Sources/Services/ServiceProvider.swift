//
//  ServiceProvider.swift
//  RxTodoPractice
//
//  Created by 최동호 on 2018. 3. 30..
//  Copyright © 2018년 최동호. All rights reserved.
//

protocol ServiceProviderType: class {
    var userDefaultsService: UserDefaultsServiceType {get}
}


final class ServiceProvider: ServiceProviderType {
    lazy var userDefaultsService: UserDefaultsServiceType = UserDefaultsService(provider: self)
    
}
