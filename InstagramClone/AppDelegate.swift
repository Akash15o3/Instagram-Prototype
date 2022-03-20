//
//  AppDelegate.swift
//  InstagramClone
//
//  Created by Akash Aggarwal on 3/20/22.
//

import UIKit
import Parse
@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let parseConfig = ParseClientConfiguration {
                $0.applicationId = "tcTUdPJQ3EkIoUNfObQFt84MaiWP53XyeJEb1fyg"
                $0.clientKey = "x6DEit4p257vIA6MI3Ul50TzpUS70A98pf51UZN5"
                $0.server = "https://parseapi.back4app.com"
        }
        Parse.initialize(with: parseConfig)
        // Override point for customization after application launch.
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }
    
    

}

