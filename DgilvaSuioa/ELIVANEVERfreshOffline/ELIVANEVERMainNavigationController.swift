//
//  ELIVANEVERMainNavigationController.swift
//  DgilvaSuioa
//
//  Created by  on 2025/12/23.
//

import UIKit


class ELIVANEVERMainNavigationController: UINavigationController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setNavigationBarHidden(true, animated: false)
        
        // 设置根控制器为 TabBarController
        let ELIVANEVERTabBar = ELIVANEVERMainTabBarController()
        self.viewControllers = [ELIVANEVERTabBar]
    }
}
