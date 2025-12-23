//
//  ELIVANEVERMainTabBarController.swift
//  DgilvaSuioa
//
//  Created by  on 2025/12/23.
//

import UIKit

class ELIVANEVERMainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        ELIVANEVERSetupTabs()
        ELIVANEVERAppearanceConfiguration()
    }
    
    private func ELIVANEVERSetupTabs() {
        // 第一个页面: DghLIsat
        let ELIVANEVERfirstVC = ELIVANEVERHiddenGemsentroller()
        ELIVANEVERfirstVC.tabBarItem = UITabBarItem(
            title: nil,
            image:UIImage(named: "ELIVANEVEcarnivalTipsOP")?.withRenderingMode(.alwaysOriginal) ,
            selectedImage:UIImage(named: "ELIVANEVEcarnivalTips")?.withRenderingMode(.alwaysOriginal)
        )
        
        // 第二个页面: RoamAssist
        let ELIVANEVERsecondVC = ELIVANEVERRoamAssistsentroller()
        ELIVANEVERsecondVC.tabBarItem = UITabBarItem(
            title: nil,
            image:UIImage(named: "ELIVANEVEcarnivalTipsOP1")?.withRenderingMode(.alwaysOriginal) ,
            selectedImage:UIImage(named: "ELIVANEVEcarnivalTips1")?.withRenderingMode(.alwaysOriginal)
        )
        
        // 第三个页面: FarmToTable
        let ELIVANEVERthirdVC = ELIVANEVERTrailTalktsentroller()
        ELIVANEVERthirdVC.tabBarItem = UITabBarItem(
            title: nil,
            image:UIImage(named: "ELIVANEVEcarnivalTipsOP2")?.withRenderingMode(.alwaysOriginal) ,
            selectedImage:UIImage(named: "ELIVANEVEcarnivalTips2")?.withRenderingMode(.alwaysOriginal)
        )
        
        // 第四个页面: Personalized
        let ELIVANEVERfourthVC = ELIVANEVERTravelDiarytroller()
        ELIVANEVERfourthVC.tabBarItem = UITabBarItem(
            title: nil,
            image:UIImage(named: "ELIVANEVEcarnivalTipsOP3")?.withRenderingMode(.alwaysOriginal),
            selectedImage: UIImage(named: "ELIVANEVEcarnivalTips3")?.withRenderingMode(.alwaysOriginal)
        )
        
        // 合并控制器数组
        self.viewControllers = [ELIVANEVERfirstVC, ELIVANEVERsecondVC, ELIVANEVERthirdVC, ELIVANEVERfourthVC]
    }
    
    private func ELIVANEVERAppearanceConfiguration() {
        self.tabBar.backgroundColor =  UIColor(red: 0.09, green: 0.1, blue: 0.13, alpha: 1)
        self.tabBar.tintColor =  UIColor(red: 0.09, green: 0.1, blue: 0.13, alpha: 1)
        
        if #available(iOS 13.0, *) {
            let appearance = UITabBarAppearance()
            appearance.configureWithOpaqueBackground()
            appearance.backgroundColor =  UIColor(red: 0.09, green: 0.1, blue: 0.13, alpha: 1)
            // 移除顶部分隔线（如果需要匹配Storyboard效果）
            appearance.shadowColor = .clear
            
            self.tabBar.standardAppearance = appearance
            if #available(iOS 15.0, *) {
                self.tabBar.scrollEdgeAppearance = appearance
            }
        }
    }
}
