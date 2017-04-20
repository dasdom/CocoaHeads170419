//
//  AppDelegate.swift
//  TDDDemo
//
//  Created by dasdom on 17/04/2017.
//  Copyright © 2017 dasdom. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow? = UIWindow(frame: UIScreen.main.bounds)

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {

        window?.rootViewController = LoginViewController()
        window?.makeKeyAndVisible()
        
        return true
    }
}

