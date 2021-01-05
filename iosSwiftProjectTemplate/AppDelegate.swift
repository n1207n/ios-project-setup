//
//  AppDelegate.swift
//  iosSwiftProjectTemplate
//
//  Created by Silin Na on 1/4/21
//  Copyright (c) 2021 sleepyseal. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        // App build environment logic
        #if LOCAL
            print("Local development build")
        #elseif DEV
            print("Dev build")
        #elseif QA
            print("QA build")
        #elseif PROD
            print("Production build")
        #endif
        return true
    }
}
