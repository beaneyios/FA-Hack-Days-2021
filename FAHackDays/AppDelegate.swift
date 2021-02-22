//
//  AppDelegate.swift
//  FAHackDays
//
//  Created by Matt Beaney on 18/02/2021.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let storyboard = UIStoryboard(
            name: "Lesson6",
            bundle: nil
        )
        
        let startingViewController = storyboard.instantiateViewController(identifier: "ModalListViewController")
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = startingViewController
        window?.makeKeyAndVisible()
        return true
    }
}

