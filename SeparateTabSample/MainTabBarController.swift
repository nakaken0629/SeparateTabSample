//
//  MainTabBarController.swift
//  SeparateTabSample
//
//  Created by 中垣 健志 on 2016/12/17.
//  Copyright © 2016年 itvirtuoso. All rights reserved.
//

import UIKit

class MainTabBarController : UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 各タブのViewControllerを取得する
        let names = ["Sub1", "Sub2"]
        
        // 手続き型の言語っぽく書いてみた
        var viewControllers = [UIViewController]()
        for name in names {
            let storyboard = UIStoryboard(name: name, bundle: nil)
            if let viewController = storyboard.instantiateInitialViewController() {
                viewControllers.append(viewController)
            }
        }
        setViewControllers(viewControllers, animated: false)
    }
}
