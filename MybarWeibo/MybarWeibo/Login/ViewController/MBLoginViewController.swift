//
//  MBLoginViewController.swift
//  MybarWeibo
//
//  Created by lijingui2010 on 2018/4/1.
//  Copyright © 2018年 MyBar. All rights reserved.
//

import UIKit

class MBLoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "关闭", style: UIBarButtonItemStyle.plain, target: self, action: #selector(clickLeftBarButtonItem))
        self.navigationItem.leftBarButtonItem?.tintColor = UIColor.black

        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "注册", style: UIBarButtonItemStyle.plain, target: self, action: #selector(clickRightBarButtonItem))
        self.navigationItem.rightBarButtonItem?.tintColor = UIColor.black

        self.view.backgroundColor = UIColor.white
    }

    override func viewWillAppear(_ animated: Bool) {
        self.tabBarController?.tabBar.isHidden = true
    }

    @objc func clickLeftBarButtonItem() {
        self.navigationController?.popViewController(animated: true)
    }

    @objc func clickRightBarButtonItem() {

    }

}
