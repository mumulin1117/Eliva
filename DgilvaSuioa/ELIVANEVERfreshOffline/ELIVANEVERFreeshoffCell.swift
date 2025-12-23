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
    let ELIVANEVERearlyBirdDeals: UIView = {
        let ELIVANEVERview = UIView()
        ELIVANEVERview.translatesAutoresizingMaskIntoConstraints = false
        ELIVANEVERview.backgroundColor = UIColor(red: 0.094, green: 0.102, blue: 0.125, alpha: 1)
        return ELIVANEVERview
    }()

    let ELIVANEVERlastMinuteOffers: UIButton = {
        let ELIVANEVERbutton = UIButton()
        ELIVANEVERbutton.translatesAutoresizingMaskIntoConstraints = false
        ELIVANEVERbutton.setBackgroundImage(UIImage(named: "ELIVANEVEaudioGuide"), for: .normal)
        return ELIVANEVERbutton
    }()

    let ELIVANEVEtravelPodcastImageView: UIImageView = {
        let ELIVANEVERView = UIImageView()
        ELIVANEVERView.translatesAutoresizingMaskIntoConstraints = false
        ELIVANEVERView.contentMode = .scaleAspectFit
        ELIVANEVERView.clipsToBounds = true
        ELIVANEVERView.image = UIImage(named: "ELIVANEVEtravelPodcast") 
        return ELIVANEVERView
    }()
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
    
    
    
    private lazy var ELIVANEVERpagerView: FSPagerView = {
        let ELIVANEVERpv = FSPagerView()
        ELIVANEVERpv.register(FSPagerViewCell.self, forCellWithReuseIdentifier: "cell")
        ELIVANEVERpv.dataSource = self
        ELIVANEVERpv.delegate = self
        ELIVANEVERpv.automaticSlidingInterval = 2.0 // Auto-scroll every 3s
        ELIVANEVERpv.isInfinite = true // Infinite looping
        ELIVANEVERpv.transformer = FSPagerViewTransformer(type: .overlap) // Custom transition
        return ELIVANEVERpv
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.selectionStyle = .none
        self.ELIVANEVERearlyBirdDeals.addSubview(ELIVANEVERpagerView)
        ELIVANEVERpagerView.frame = CGRect.init(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 227)
        setELIVANEVERupUI()
    }
    private func setELIVANEVERupUI() {
        self.selectionStyle = .none
        self.contentView.backgroundColor = UIColor(red: 0.094, green: 0.102, blue: 0.125, alpha: 1)
        
        contentView.addSubview(ELIVANEVERearlyBirdDeals)
        contentView.addSubview(ELIVANEVERlastMinuteOffers)
        contentView.addSubview(ELIVANEVEtravelPodcastImageView)
        
        ELIVANEVERearlyBirdDeals.addSubview(ELIVANEVERpagerView)
        ELIVANEVERpagerView.dataSource = self
        ELIVANEVERpagerView.delegate = self
        
        NSLayoutConstraint.activate([
            ELIVANEVERearlyBirdDeals.topAnchor.constraint(equalTo: contentView.topAnchor), 
            ELIVANEVERearlyBirdDeals.leadingAnchor.constraint(equalTo: contentView.leadingAnchor), 
            ELIVANEVERearlyBirdDeals.trailingAnchor.constraint(equalTo: contentView.trailingAnchor), 
            ELIVANEVERearlyBirdDeals.heightAnchor.constraint(equalToConstant: 227),
            
            ELIVANEVERlastMinuteOffers.topAnchor.constraint(equalTo: ELIVANEVERearlyBirdDeals.bottomAnchor, constant: 16),
            ELIVANEVERlastMinuteOffers.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            ELIVANEVERlastMinuteOffers.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            ELIVANEVERlastMinuteOffers.heightAnchor.constraint(equalToConstant: 72),
            
            ELIVANEVEtravelPodcastImageView.topAnchor.constraint(equalTo: ELIVANEVERlastMinuteOffers.bottomAnchor, constant: 16), 
            ELIVANEVEtravelPodcastImageView.leadingAnchor.constraint(equalTo: ELIVANEVERlastMinuteOffers.leadingAnchor),
            ELIVANEVEtravelPodcastImageView.widthAnchor.constraint(equalToConstant: 97),
            ELIVANEVEtravelPodcastImageView.heightAnchor.constraint(equalToConstant: 24)
        ])
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
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
