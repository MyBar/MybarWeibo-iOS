//
//  MBMainTabBar.swift
//  MybarWeibo
//
//  Created by lijingui2010 on 2018/3/31.
//  Copyright © 2018年 MyBar. All rights reserved.
//

import UIKit

class MBMainTabBar: UITabBar {

    private var composeButton: UIButton

    override init(frame: CGRect) {
        // Add the compose Button to the Center
        self.composeButton = UIButton(type: .custom)
        self.composeButton.setBackgroundImage(UIImage(named: "tabbar_compose_button"), for: UIControlState.normal)
        self.composeButton.setBackgroundImage(UIImage(named: "tabbar_compose_button_highlighted"), for: UIControlState.highlighted)
        self.composeButton.setImage(UIImage(named: "tabbar_compose_icon_add"), for: UIControlState.normal)
        self.composeButton.setImage(UIImage(named: "tabbar_compose_icon_add_highlighted"), for: UIControlState.highlighted)
        self.composeButton.sizeToFit()

        super.init(frame: frame)

        self.addSubview(self.composeButton)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func layoutSubviews() {
        super.layoutSubviews()

        self.composeButton.center = CGPoint(x: self.frame.width / 2.0, y: self.frame.height / 2.0)

        let itemCount = (self.items?.count ?? 0) + 1
        let tabBarItemWidth = self.frame.width / CGFloat(itemCount)
        var tabBarItemIndex = 0
        let tabBarButton: AnyClass = NSClassFromString("UITabBarButton")!
        for view in self.subviews {
            if view.isKind(of: tabBarButton) {
                view.frame.size.width = tabBarItemWidth
                view.frame.origin.x = tabBarItemWidth * CGFloat(tabBarItemIndex)

                tabBarItemIndex += 1

                if tabBarItemIndex == 2 {
                    tabBarItemIndex += 1
                }
            }
        }
    }

}
