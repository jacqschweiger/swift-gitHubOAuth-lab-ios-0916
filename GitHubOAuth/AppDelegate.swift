//
//  AppDelegate.swift
//  GitHubOAuth
//
//  Created by Joel Bell on 10/24/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        return true
    }
    
    func application(_ app: UIApplication, open url: URL, options: [UIApplicationOpenURLOptionsKey : Any] = [:]) -> Bool {
        
        let sourceAppKeyValue = options[UIApplicationOpenURLOptionsKey.sourceApplication] as! String
        
        if sourceAppKeyValue == "com.apple.SafariViewService" {
            NotificationCenter.default.post(name: Notification.Name.closeSafariVC, object: url)
            return true
        } else {
            return false
        }

    }


}

