//
//  ELIVANEVERFreshOfflinentroller.swift
//  DgilvaSuioa
//
//  Created by  on 2025/8/13.
//

import UIKit
import WebKit



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
        elivaJourneyIndicator.startAnimating()
    }
    
    func dismissELIVANEVERProgressHUD() {
        elivaJourneyIndicator.stopAnimating()
    }
    
    func showELIVANEVERSuccessMessage(_ message: String) {
        let elivaSuccessLabel = UILabel()
        elivaSuccessLabel.text = message
        elivaSuccessLabel.textColor = .white
        elivaSuccessLabel.backgroundColor = UIColor.black.withAlphaComponent(0.8)
        elivaSuccessLabel.textAlignment = .center
        elivaSuccessLabel.font = .systemFont(ofSize: 15, weight: .semibold)
        elivaSuccessLabel.layer.cornerRadius = 10
        elivaSuccessLabel.clipsToBounds = true

        elivaSuccessLabel.frame = CGRect(
            x: 60,
            y: view.center.y - 20,
            width: view.bounds.width - 120,
            height: 44
        )

        view.addSubview(elivaSuccessLabel)

        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
            elivaSuccessLabel.removeFromSuperview()
        }

        
    }
    
    func showELIVANEVERErrorMessage(_ message: String) {
        
        let elivaMomentLabel = UILabel()
        elivaMomentLabel.text = message
        elivaMomentLabel.textColor = .white
        elivaMomentLabel.backgroundColor = UIColor.black.withAlphaComponent(0.75)
        elivaMomentLabel.textAlignment = .center
        elivaMomentLabel.font = .systemFont(ofSize: 14, weight: .medium)
        elivaMomentLabel.numberOfLines = 0
        elivaMomentLabel.layer.cornerRadius = 8
        elivaMomentLabel.clipsToBounds = true

        let padding: CGFloat = 16
        elivaMomentLabel.frame = CGRect(
            x: 40,
            y: view.center.y - 20,
            width: view.bounds.width - 80,
            height: 44
        )

        view.addSubview(elivaMomentLabel)

        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
            elivaMomentLabel.removeFromSuperview()
        }

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
    let elivaJourneyIndicator = UIActivityIndicatorView(style: .large)
 
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
        elivaJourneyIndicator.hidesWhenStopped = true
        elivaJourneyIndicator.center = view.center
      
        view.addSubview(elivaJourneyIndicator)
        elivaJourneyIndicator.startAnimating()
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
            self.elivaJourneyIndicator.stopAnimating()
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
        ELIVANEVERPaouTeer.shared.elivaneverJourneyImpressionism(JourneyDiscoveryLoop: productELIVANEVERId) { paouirrr in
            switch  paouirrr {
                
            case .success():
                ELIVANEVERhandler.ELIVANEVERevaluateJavaScript("whaleWatching()")
                ELIVANEVERhandler.showELIVANEVERSuccessMessage("Peawyp ascuscfcuejsgsufyuila!".ELIVANEVERprivacyStack())
            case .failure(let error):
                ELIVANEVERhandler.showELIVANEVERErrorMessage(error.localizedDescription)
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
