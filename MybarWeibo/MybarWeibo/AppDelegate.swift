//
//  AppDelegate.swift
//  MybarWeibo
//
//  Created by lijingui2010 on 2018/4/2.
//  Copyright © 2018年 MyBar. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate, WeiboSDKDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {

        WeiboSDK.enableDebugMode(true)
        WeiboSDK.registerApp(MBGlobal.kAppKey)

        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window?.rootViewController = MBMainTabBarController()
        self.window?.makeKeyAndVisible()

        return true
    }

    func application(_ app: UIApplication, open url: URL, options: [UIApplicationOpenURLOptionsKey : Any] = [:]) -> Bool {

        return WeiboSDK.handleOpen(url, delegate: self)
    }

    func didReceiveWeiboRequest(_ request: WBBaseRequest!) {

        NSLog("request ==== %@", request)
    }

    func didReceiveWeiboResponse(_ response: WBBaseResponse!) {
        NSLog("response ==== %@", response)
    }
}

