//
//  AppDelegate.swift
//  RxTodoPractice
//
//  Created by 최동호 on 2018. 3. 30..
//  Copyright © 2018년 최동호. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        let window = UIWindow(frame: UIScreen.main.bounds)
        window.backgroundColor = .white
        window.makeKeyAndVisible()
        
        let viewController = TaskListViewController()
        let navController = UINavigationController(rootViewController: viewController)
        window.rootViewController = navController
        
        self.window = window
        
        return true
    }


}

