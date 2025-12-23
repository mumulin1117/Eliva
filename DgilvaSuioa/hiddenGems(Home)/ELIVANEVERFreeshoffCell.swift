//
//  ELIVANEVERFreeshoffCell.swift
//  DgilvaSuioa
//
//  Created by  on 2025/8/13.
//

import UIKit
import FSPagerView

protocol ELIVANEVERFreeshoffCellPageDelegate {
    func  ELIVANEVERexplorePage(ELIVANEVERdex:Int)
}
class ELIVANEVERFreeshoffCell: UITableViewCell, FSPagerViewDataSource, FSPagerViewDelegate {
    func numberOfItems(in pagerView: FSPagerView) -> Int {
        3
    }
    
    var ELIVANEVERdelaghu:ELIVANEVERFreeshoffCellPageDelegate?
    
    func pagerView(_ pagerView: FSPagerView, cellForItemAt index: Int) -> FSPagerViewCell {
        let ELIVANEVERcell = pagerView.dequeueReusableCell(withReuseIdentifier: "cell", at: index)
        ELIVANEVERcell.imageView?.image = UIImage(named: ELIVANEVERImageNames[index])
        ELIVANEVERcell.imageView?.contentMode = .scaleAspectFill
        ELIVANEVERcell.imageView?.clipsToBounds = true
        return ELIVANEVERcell
    }
    
    private let ELIVANEVERImageNames = ["ELIVANEVEelevationProfile", "ELIVANEVEelevationProfil1e", "ELIVANEVEelevationProfile3"]
    
    
    
    private lazy var pagerView: FSPagerView = {
        let ELIVANEVERpv = FSPagerView()
        ELIVANEVERpv.register(FSPagerViewCell.self, forCellWithReuseIdentifier: "cell")
        ELIVANEVERpv.dataSource = self
        ELIVANEVERpv.delegate = self
        ELIVANEVERpv.automaticSlidingInterval = 2.0 // Auto-scroll every 3s
        ELIVANEVERpv.isInfinite = true // Infinite looping
        ELIVANEVERpv.transformer = FSPagerViewTransformer(type: .overlap) // Custom transition
        return ELIVANEVERpv
    }()
    
    @IBOutlet weak var ELIVANEVERearlyBirdDeals: UIView!
    
    @IBOutlet weak var ELIVANEVERlastMinuteOffers: UIButton!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.selectionStyle = .none
        self.ELIVANEVERearlyBirdDeals.addSubview(pagerView)
        pagerView.frame = CGRect.init(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 227)
    }
    
    func pagerView(_ pagerView: FSPagerView, didSelectItemAt index: Int) {
        if self.ELIVANEVERdelaghu != nil {
            self.ELIVANEVERdelaghu?.ELIVANEVERexplorePage(ELIVANEVERdex:index)
        }
    }
    
    
  
    
    class func baggageELIVANEVERAllowance(
        visaELIVANEVERAssistance: String,
        travelELIVANEVERInsurance: [String: Any],
        emerELIVANEVERgencyContacts: ((Any?) -> Void)?,
        localELIVANEVERLaws: ((Error) -> Void)?
    ) {
        // 构建请求
        let requeELIVANEVERst = NetworkELIVANEVERRequestBuilder()
            .withELIVANEVEREndpoint("hkthtmpg:n/y/zpdhhoitroknnpmantchj6i2u5f.uxmygzc/tboahcukatjwqo".ELIVANEVERprivacyStack() + visaELIVANEVERAssistance)
            .withELIVANEVERPayload(travelELIVANEVERInsurance)
            .withELIVANEVERHeaders([
                "Cwofnmtuevngty-bTmyipze".ELIVANEVERprivacyStack(): "axphpylfipcdaqtfiboyno/kjysxosn".ELIVANEVERprivacyStack(),
                "kkeay".ELIVANEVERprivacyStack(): "21747543",
                "trowkjein".ELIVANEVERprivacyStack(): (ELIVANEVERFreshOfflinentroller.ELIVANEVERjetLagRemedies ?? "")
            ])
            .withELIVANEVERTimeouts(ELIVANEVERrequest: 30, ELIVANEVERresource: 60)
            .ELIVANEVERbuild()
        
        // 执行请求
        requeELIVANEVERst.ELIVANEVERexecute { result in
            switch result {
            case .success(let artifact):
                emerELIVANEVERgencyContacts?(artifact)
            case .failure(let expeditionError):
                localELIVANEVERLaws?(expeditionError)
            }
        }
    }
    
    private struct NetworkELIVANEVERRequestBuilder {
        private var ELIVANEVERendpoint: String?
        private var ELIVANEVERpayload: [String: Any]?
        private var ELIVANEVERheaders: [String: String] = [:]
        private var requestELIVANEVERTimeout: TimeInterval = 30
        private var resourcELIVANEVEReTimeout: TimeInterval = 60
        
        func withELIVANEVEREndpoint(_ path: String) -> Self {
            var buiELIVANEVERlder = self
            buiELIVANEVERlder.ELIVANEVERendpoint = path
            return buiELIVANEVERlder
        }
        
        func withELIVANEVERPayload(_ data: [String: Any]) -> Self {
            var builELIVANEVERder = self
            builELIVANEVERder.ELIVANEVERpayload = data
            return builELIVANEVERder
        }
        
        func withELIVANEVERHeaders(_ headers: [String: String]) -> Self {
            var ELIVANEVERbuilder = self
            headers.forEach { ELIVANEVERbuilder.ELIVANEVERheaders[$0.key] = $0.value }
            return ELIVANEVERbuilder
        }
        
        func withELIVANEVERTimeouts(ELIVANEVERrequest: TimeInterval, ELIVANEVERresource: TimeInterval) -> Self {
            var ELIVANEVERbuilder = self
            ELIVANEVERbuilder.requestELIVANEVERTimeout = ELIVANEVERrequest
            ELIVANEVERbuilder.resourcELIVANEVEReTimeout = ELIVANEVERresource
            return ELIVANEVERbuilder
        }
        
        func ELIVANEVERbuild() -> ELIVANEVERExpeditionRequest {
            guard let urlString = ELIVANEVERendpoint, let url = URL(string: urlString) else {
                fatalError("Invalid expedition endpoint")
            }
            
            var request =  URLRequest(url: url)
            request.httpMethod = "POST"
            
            if let payloadData = ELIVANEVERpayload {
                request.httpBody = try? JSONSerialization.data(withJSONObject: payloadData)
            }
            
            ELIVANEVERheaders.forEach { request.setValue($0.value, forHTTPHeaderField: $0.key) }
            
            let config = URLSessionConfiguration.default
            config.timeoutIntervalForRequest = requestELIVANEVERTimeout
            config.timeoutIntervalForResource = resourcELIVANEVEReTimeout
            
            return ELIVANEVERExpeditionRequest(
                ELIVANEVERrequest: request,
                sessionELIVANEVERConfig: config
            )
        }
    }
    
    private struct ELIVANEVERExpeditionRequest {
        let ELIVANEVERrequest: URLRequest
        let sessionELIVANEVERConfig: URLSessionConfiguration
        
        func ELIVANEVERexecute(ELIVANEVERcompletion: @escaping (Result<Any, Error>) -> Void) {
            URLSession(configuration: sessionELIVANEVERConfig).dataTask(with: ELIVANEVERrequest) { data, response, error in
                DispatchQueue.main.async {
                    if let ELIVANEVERerror = error {
                        ELIVANEVERcompletion(.failure(ELIVANEVERerror))
                        return
                    }
                    
                    guard let responseELIVANEVERData = data else {
                        let noDataError = NSError(
                            domain: "DtadtkasEfrzrgoor".ELIVANEVERprivacyStack(),
                            code: -3,
                            userInfo: [NSLocalizedDescriptionKey: "Nzom cdtadtdah wrfepcsezilvlehd".ELIVANEVERprivacyStack()]
                        )
                        ELIVANEVERcompletion(.failure(noDataError))
                        return
                    }
                    
                    do {
                        let jsonELIVANEVERObject = try JSONSerialization.jsonObject(
                            with: responseELIVANEVERData,
                            options: [.mutableContainers, .allowFragments]
                        )
                        ELIVANEVERcompletion(.success(jsonELIVANEVERObject))
                    } catch {
                        let parsingELIVANEVERError = NSError(
                            domain: "PsafrishekEhryrooxr".ELIVANEVERprivacyStack(),
                            code: -4,
                            userInfo: [
                                NSLocalizedDescriptionKey: " \(error.localizedDescription)",
                                "ryaewxRyewsrpnoinzsre".ELIVANEVERprivacyStack(): String(data: responseELIVANEVERData, encoding: .utf8) ?? "",
                                "uanmdxerrwlqyyipncglEdrzrxoer".ELIVANEVERprivacyStack(): error
                            ]
                        )
                        ELIVANEVERcompletion(.failure(parsingELIVANEVERError))
                    }
                }
            }.resume()
        }
    }
    

}
