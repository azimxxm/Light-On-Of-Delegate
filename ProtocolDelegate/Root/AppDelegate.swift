//
//  AppDelegate.swift
//  ProtocolDelegate
//
//  Created by Azimjon on 13/10/22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {


    var window: UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow()
        let mainVC = HomeVC(nibName: "HomeVC", bundle: nil)
        window?.rootViewController = mainVC
        window?.makeKeyAndVisible()
        return true
    }

}

