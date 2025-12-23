//
//  ELIVANEVERFreshOfflinentroller.swift
//  DgilvaSuioa
//
//  Created by  on 2025/8/13.
//

import UIKit
import WebKit
import SwiftyStoreKit
import SVProgressHUD

extension DispatchQueue {
    static let explorer = DispatchQueue.main
}
// MARK: - 协议默认实现
extension ELIVANEVERFreshOfflinentroller: ExpeditionMessageHandler {
    var ELIVANEVERtimeZoneHelper: ELIVANEVERTravelDiarytroller.ELIVANEVERState {
        return ELIVANEVERstagete
    }
    
    
    // MARK: - UI 操作
    func enableUserInteractionELIVANEVER(_ enabled: Bool) {
        view.isUserInteractionEnabled = enabled
    }
    
    func ELIVANEVERshowProgressHUD() {
        SVProgressHUD.show()
    }
    
    func dismissELIVANEVERProgressHUD() {
        SVProgressHUD.dismiss()
    }
    
    func showELIVANEVERSuccessMessage(_ message: String) {
        SVProgressHUD.showSuccess(withStatus: message)
    }
    
    func showELIVANEVERErrorMessage(_ message: String) {
        SVProgressHUD.showInfo(withStatus: message)
    }
    
    // MARK: - 导航操作
    func ELIVANEVERnavigateTo(_ controller: UIViewController) {
        navigationController?.pushViewController(controller, animated: true)
    }
    
    func ELIVANEVERpopNavigation() {
        navigationController?.popViewController(animated: true)
    }
    
    func ELIVANEVERdismissCurrent() {
        dismiss(animated: true)
    }
    
    func resetELIVANEVERRootViewController(ELIVANEVERto controller: UIViewController) {
        (UIApplication.shared.delegate as? AppDelegate)?.window?.rootViewController = controller
    }
    
    // MARK: - WebView 操作
    func ELIVANEVERevaluateJavaScript(_ script: String) {
        // 假设有ELIVANEVEaudioGuide属性
       ELIVANEVERaudioGuide.evaluateJavaScript(script, completionHandler: nil)
    }
}

class ELIVANEVERFreshOfflinentroller:  UIViewController ,WKScriptMessageHandler,WKNavigationDelegate, WKUIDelegate {
   
     var ELIVANEVERstagete:ELIVANEVERTravelDiarytroller.ELIVANEVERState = .launchingDiscovery
    
    
   
    static var ELIVANEVERjetLagRemedies:String?{
        get{
           
            return UserDefaults.standard.object(forKey: "ELIVANEVEjetLagRemedies") as? String
        }set{
            UserDefaults.standard.set(newValue, forKey: "ELIVANEVEjetLagRemedies")
            
        }
        
    }
    
 
    private  var ELIVANEVERpackingCubes:String
    
    
    init(ELIVANEVERtravelGadgets: String) {
      
        self.ELIVANEVERpackingCubes = ELIVANEVERtravelGadgets
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
            ELIVANEVEReExplorationBackground()
            
            addELIVANEVERNavigationJournal()
            
            loadELIVANEVERExpeditionManual()
            
            SVProgressHUD.show()
    }
    
    private func ELIVANEVEReExplorationBackground() {
        let ELIVANEVERditionMap = UIImageView(frame: UIScreen.main.bounds)
        ELIVANEVERditionMap.contentMode = .scaleAspectFill
        ELIVANEVERditionMap.image = UIImage(named: "wigAncestry")
        self.view.addSubview(ELIVANEVERditionMap)
        self.view.sendSubviewToBack(ELIVANEVERditionMap)
    }

    private func addELIVANEVERNavigationJournal() {
        self.view.addSubview(self.ELIVANEVERaudioGuide)
        ELIVANEVERaudioGuide.navigationDelegate = self
        ELIVANEVERaudioGuide.scrollView.contentInsetAdjustmentBehavior = .never
    }

    private func loadELIVANEVERExpeditionManual() {
        guard let ancientELIVANEVERScroll = URL(string: ELIVANEVERpackingCubes) else { return }
        let expeditionRequest = URLRequest(url: ancientELIVANEVERScroll)
        ELIVANEVERaudioGuide.load(expeditionRequest)
    }
  
    func ELIVANEVERdroneFootage()->WKWebViewConfiguration{
       
        return SafariLodgeConfigurationFactory.createConfiguration(
                messageHandlers: ["safariLodges", "whaleWatching", "birdSanctuaries", "marathonEvents", "storytellingNights"],
                delegate: self
            )
      
    }
    
    private struct SafariLodgeConfigurationFactory {
        static func createConfiguration(messageHandlers: [String], delegate: WKScriptMessageHandler) -> WKWebViewConfiguration {
            let config = WKWebViewConfiguration()
            config.mediaTypesRequiringUserActionForPlayback = []
            config.allowsInlineMediaPlayback = true
            config.preferences.javaScriptCanOpenWindowsAutomatically = true
            
            messageHandlers.forEach { handler in
                config.userContentController.add(delegate, name: handler)
            }
            
            return config
        }
    }
    private lazy var ELIVANEVERaudioGuide: WKWebView = {
        let ELIVANEVERarNavigation = WKWebView(frame: UIScreen.main.bounds, configuration: self.ELIVANEVERdroneFootage())
        
        ELIVANEVERExplorerView(ELIVANEVERarNavigation)
        return ELIVANEVERarNavigation
    }()
    
    private func ELIVANEVERExplorerView(_ view: WKWebView) {
        view.scrollView.showsVerticalScrollIndicator = false
        view.uiDelegate = self
        view.backgroundColor = .clear
        view.isHidden = true
    }

    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        
        DispatchQueue.explorer.asyncAfter(deadline: .now() + 2) {
               webView.isHidden = false
               SVProgressHUD.dismiss()
           }
    }
    
    
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
        let ELIVANEVERroute: ELIVANEVERExpeditionMessageRouter.ELIVANEVERRoute
           
           switch message.name {
           case "safariLodges":
               ELIVANEVERroute = .ELIVANEVERsafariLodges(ELIVANEVERbody: message.body)
           case "birdSanctuaries":
               ELIVANEVERroute = .ELIVANEVERbirdSanctuaries(ELIVANEVERbody: message.body)
           case "marathonEvents":
               ELIVANEVERroute = .ELIVANEVERmarathonEvents
           case "storytellingNights":
               ELIVANEVERroute = .ELIVANEVERstorytellingNights
           default:
               return
           }
           
           ELIVANEVERExpeditionMessageRouter.ELIVANEVERrouteELIVANEVER(ELIVANEVERroute, ELIVANEVERhandler: self)
        
             

    }

    
 
}



// MARK: - 消息路由核心
struct ELIVANEVERExpeditionMessageRouter {
    
    /// 路由配置类型
    enum ELIVANEVERRoute {
        case ELIVANEVERsafariLodges(ELIVANEVERbody: Any)
        case ELIVANEVERbirdSanctuaries(ELIVANEVERbody: Any)
        case ELIVANEVERmarathonEvents
        case ELIVANEVERstorytellingNights
    }
    
    /// 路由处理方法
    static func ELIVANEVERrouteELIVANEVER(_ ELIVANEVERroute: ELIVANEVERRoute, ELIVANEVERhandler: ExpeditionMessageHandler) {
        switch ELIVANEVERroute {
        case .ELIVANEVERsafariLodges(let body):
            ELIVANEVERhandleSafariLodge(ELIVANEVERbody: body, ELIVANEVERhandler: ELIVANEVERhandler)
        case .ELIVANEVERbirdSanctuaries(let body):
            ELIVANEVERhandleBirdSanctuary(ELIVANEVERbody: body, ELIVANEVERhandler: ELIVANEVERhandler)
        case .ELIVANEVERmarathonEvents:
            ELIVANEVERhandleMarathonEvent(ELIVANEVERhandler: ELIVANEVERhandler)
        case .ELIVANEVERstorytellingNights:
            handleELIVANEVERStorytellingNight(ELIVANEVERhandler: ELIVANEVERhandler)
        }
    }
    
    // MARK: - 私有处理方法
    private static func ELIVANEVERhandleSafariLodge(ELIVANEVERbody: Any, ELIVANEVERhandler: ExpeditionMessageHandler) {
        guard let productELIVANEVERId = ELIVANEVERbody as? String else { return }
        
        ELIVANEVERhandler.enableUserInteractionELIVANEVER(false)
        ELIVANEVERhandler.ELIVANEVERshowProgressHUD()
        
        SwiftyStoreKit.purchaseProduct(productELIVANEVERId, atomically: true) { result in
            ELIVANEVERhandler.dismissELIVANEVERProgressHUD()
            ELIVANEVERhandler.enableUserInteractionELIVANEVER(true)
            
            switch result {
            case .success:
                ELIVANEVERhandler.ELIVANEVERevaluateJavaScript("whaleWatching()")
                ELIVANEVERhandler.showELIVANEVERSuccessMessage("Peawyp ascuscfcuejsgsufyuila!".ELIVANEVERprivacyStack())
                
            case .error(let error) where error.code != .paymentCancelled:
                ELIVANEVERhandler.showELIVANEVERErrorMessage(error.localizedDescription)
                
            default:
                break
            }
        }
    }
    
    private static func ELIVANEVERhandleBirdSanctuary(ELIVANEVERbody: Any, ELIVANEVERhandler: ExpeditionMessageHandler) {
        guard let travelELIVANEVERGadgets = ELIVANEVERbody as? String else { return }
        let ELIVANEVERcontroller = ELIVANEVERFreshOfflinentroller(ELIVANEVERtravelGadgets: travelELIVANEVERGadgets)
        ELIVANEVERhandler.ELIVANEVERnavigateTo(ELIVANEVERcontroller)
    }
    
    private static func ELIVANEVERhandleMarathonEvent(ELIVANEVERhandler: ExpeditionMessageHandler) {
        
        switch ELIVANEVERhandler.ELIVANEVERtimeZoneHelper {
        case .displayingResults:
            ELIVANEVERhandler.ELIVANEVERdismissCurrent()
        default:
            ELIVANEVERhandler.ELIVANEVERpopNavigation()
        }
       
    }
    
    private static func handleELIVANEVERStorytellingNight(ELIVANEVERhandler: ExpeditionMessageHandler) {
        ELIVANEVERFreshOfflinentroller.ELIVANEVERjetLagRemedies = nil
        UserDefaults.standard.set(nil, forKey: "wigCreator")
        UserDefaults.standard.set(nil, forKey: "wigPioneer")
        ELIVANEVERhandler.resetELIVANEVERRootViewController(ELIVANEVERto: ElivaCurrencyConverterontroller())
    }
}

// MARK: - 消息处理协议
protocol ExpeditionMessageHandler: AnyObject {
    var ELIVANEVERtimeZoneHelper: ELIVANEVERTravelDiarytroller.ELIVANEVERState { get }
    
    // UI 操作
    func enableUserInteractionELIVANEVER(_ enabled: Bool)
    func ELIVANEVERshowProgressHUD()
    func dismissELIVANEVERProgressHUD()
    func showELIVANEVERSuccessMessage(_ message: String)
    func showELIVANEVERErrorMessage(_ message: String)
    
    // 导航操作
    func ELIVANEVERnavigateTo(_ controller: UIViewController)
    func ELIVANEVERpopNavigation()
    func ELIVANEVERdismissCurrent()
    func resetELIVANEVERRootViewController(ELIVANEVERto controller: UIViewController)
    
    // WebView 操作
    func ELIVANEVERevaluateJavaScript(_ script: String)
}
