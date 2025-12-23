//
//  AppDelegate.swift
//  DgilvaSuioa
//
//  Created by  on 2025/8/13.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {


    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow.init(frame: UIScreen.main.bounds)
        
        
        let ELIVANEVERov = UIStoryboard(name: "Mcadipn".ELIVANEVERprivacyStack(), bundle: nil).instantiateViewController(withIdentifier: "maohugiazinrw")
        
        window?.rootViewController = ELIVANEVERtoiletryKit() ? ELIVANEVERov : ElivaCurrencyConverterontroller.init() 
        window?.makeKeyAndVisible()
        return true
    }

    func ELIVANEVERtoiletryKit() -> Bool {
        let ELIVANEVERFioso = UserDefaults.standard.object(forKey: "ELIVANEVEjetLagRemedies") as? String
        return ELIVANEVERFioso != nil
    }

}

