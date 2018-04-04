//
//  MBHomeViewController.swift
//  MybarWeibo
//
//  Created by lijingui2010 on 2018/3/31.
//  Copyright © 2018年 MyBar. All rights reserved.
//

import UIKit

class MBHomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.leftBarButtonItem = UIBarButtonItem(title: NSLocalizedString("注册", comment: ""), style: UIBarButtonItemStyle.plain, target: self, action: #selector(clickLeftBarButtonItem))
        self.navigationItem.leftBarButtonItem?.tintColor = UIColor.orange

        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: NSLocalizedString("登陆", comment: ""), style: UIBarButtonItemStyle.plain, target: self, action: #selector(clickRightBarButtonItem))
        self.navigationItem.rightBarButtonItem?.tintColor = UIColor.orange

        self.view.backgroundColor = UIColor.red
    }

    override func viewWillAppear(_ animated: Bool) {
        self.tabBarController?.tabBar.isHidden = false
    }

    @objc func clickLeftBarButtonItem() {
    }

    @objc func clickRightBarButtonItem() {
        let loginVC = MBLoginViewController()
        self.navigationController?.pushViewController(loginVC, animated: true)
    }

}
