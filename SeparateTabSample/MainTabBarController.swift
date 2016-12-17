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
       
        // Swiftらしくワンライナーで書いてみた
         setViewControllers(names.flatMap { UIStoryboard(name: $0, bundle: nil).instantiateInitialViewController() }, animated: false)
        

    }
}
