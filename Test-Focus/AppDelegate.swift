//
//  AppDelegate.swift
//  Test-Focus
//
//  Created by Gustavo Carreno on 4/4/21.

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let loginService = LoginService()
        let loginControllerViewModel = LoginControllerViewModel(loginService)
        let loginController = LoginController.create(with: loginControllerViewModel)
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = loginController
        window?.makeKeyAndVisible()
        
        return true
    }
}

