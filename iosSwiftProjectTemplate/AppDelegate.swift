//
//  AppDelegate.swift
//  iosSwiftProjectTemplate
//
//  Created by Silin Na on 1/8/21
//  Copyright (c) 2021 COMPANY_NAME. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {

        performAppEnvTask()
        attachFirstView()
        return true
    }

    func performAppEnvTask() {
        // App build environment logic
    }

    func attachFirstView() {
        let window = UIWindow(frame: UIScreen.main.bounds)
        window.backgroundColor = .white
        window.makeKeyAndVisible()

        // Add the first screen and attach to navigationController
        let firstViewController = UIViewController()
        let navigationController = UINavigationController(rootViewController: firstViewController)

        window.rootViewController = navigationController
        self.window = window
    }
}
