//
//  MBMainTabBarController.swift
//  MybarWeibo
//
//  Created by lijingui2010 on 2018/3/31.
//  Copyright © 2018年 MyBar. All rights reserved.
//

import UIKit

class MBMainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let homeVC = MBHomeViewController()
        self.addChildViewController(homeVC, title: "微博", imageName: "tabbar_home", highlightedImageName: "tabbar_home_highlighted", selectedImageName: "tabbar_home_selected")

        let messageVC = MBMessageViewController()
        self.addChildViewController(messageVC, title: "消息", imageName: "tabbar_message_center", highlightedImageName: "tabbar_message_center_highlighted", selectedImageName: "tabbar_message_center_selected")

        let discoverVC = MBDiscoverViewController()
        self.addChildViewController(discoverVC, title: "发现", imageName: "tabbar_discover", highlightedImageName: "tabbar_discover_highlighted", selectedImageName: "tabbar_discover_selected")

        let profileVC = MBProfileViewController()
        self.addChildViewController(profileVC, title: "我", imageName: "tabbar_profile", highlightedImageName: "tabbar_profile_highlighted", selectedImageName: "tabbar_profile_selected")

        let tabBar = MBMainTabBar()
        self.setValue(tabBar, forKeyPath: "tabBar")
    }

    /**
     *  添加一个子控制器
     *
     *  @param childVc       子控制器
     *  @param title         标题
     *  @param image         图片
     *  @param selectedImage 选中的图片
     */
    func addChildViewController(_ childController: UIViewController, title: String, imageName: String, highlightedImageName: String, selectedImageName: String) {

        childController.tabBarItem.title = title

        childController.tabBarItem.image = UIImage(named: imageName)?.withRenderingMode(UIImageRenderingMode.alwaysOriginal)
        childController.tabBarItem.selectedImage = UIImage(named: selectedImageName)?.withRenderingMode(UIImageRenderingMode.alwaysOriginal)

        // 设置文字的样式
        var textAttrs = Dictionary<NSAttributedStringKey, Any>()
        textAttrs[NSAttributedStringKey.foregroundColor] = UIColor(red: 123.0 / 255.0, green: 123.0 / 255.0, blue: 123.0 / 255.0, alpha: 1.0)
        childController.tabBarItem.setTitleTextAttributes(textAttrs, for: UIControlState.normal)

        var selectTextAttrs = Dictionary<NSAttributedStringKey, Any>()
        selectTextAttrs[NSAttributedStringKey.foregroundColor] = UIColor(red: 12.0 / 255.0, green: 12.0 / 255.0, blue: 12.0 / 255.0, alpha: 1.0)
        childController.tabBarItem.setTitleTextAttributes(selectTextAttrs, for: UIControlState.selected)

        let navVC = UINavigationController(rootViewController: childController)
        self.addChildViewController(navVC)
    }

}
