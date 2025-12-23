//
//  ELIVANEVERFreeshoffCell.swift
//  DgilvaSuioa
//
//  Created by  on 2025/8/13.
import UIKit

protocol ELIVANEVERFreeshoffCellPageDelegate: AnyObject {
    func ELIVANEVERexplorePage(ELIVANEVERdex: Int)
}

class ELIVANEVERFreeshoffCell: UITableViewCell, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    // MARK: - UI Components
    let ELIVANEVERearlyBirdDeals: UIView = {
        let ELIVANEVERview = UIView()
        ELIVANEVERview.translatesAutoresizingMaskIntoConstraints = false
        ELIVANEVERview.backgroundColor = UIColor(red: 0.094, green: 0.102, blue: 0.125, alpha: 1)
        return ELIVANEVERview
    }()

    let ELIVANEVERlastMinuteOffers: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setBackgroundImage(UIImage(named: "ELIVANEVEaudioGuide"), for: .normal)
        return button
    }()

    let ELIVANEVEtravelPodcastImageView: UIImageView = {
        let ELIVANEVERview = UIImageView()
        ELIVANEVERview.translatesAutoresizingMaskIntoConstraints = false
        ELIVANEVERview.contentMode = .scaleAspectFit
        ELIVANEVERview.clipsToBounds = true
        ELIVANEVERview.image = UIImage(named: "ELIVANEVEtravelPodcast")
        return ELIVANEVERview
    }()

    // 原生 CollectionView 替换 FSPagerView
    private lazy var ELIVANEVERCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.minimumLineSpacing = 0
        layout.minimumInteritemSpacing = 0
        
        let cELIVANEVERv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cELIVANEVERv.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "NativeCell")
        cELIVANEVERv.dataSource = self
        cELIVANEVERv.delegate = self
        cELIVANEVERv.isPagingEnabled = true // 开启原生翻页
        cELIVANEVERv.showsHorizontalScrollIndicator = false
        cELIVANEVERv.backgroundColor = .clear
        return cELIVANEVERv
    }()

    // MARK: - Properties
    private let ELIVANEVERImageNames = ["ELIVANEVEelevationProfile", "ELIVANEVEelevationProfil1e", "ELIVANEVEelevationProfile3"]
    var ELIVANEVERdelaghu: ELIVANEVERFreeshoffCellPageDelegate?
    private var ELIVANEVERtimer: Timer?
    
    // 为了实现无限循环，逻辑上增加倍数
    private let dummyCount = 1000

    // MARK: - Init
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setELIVANEVERupUI()
        ELIVANEVERstartTimer()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setELIVANEVERupUI() {
        self.selectionStyle = .none
        self.contentView.backgroundColor = UIColor(red: 0.094, green: 0.102, blue: 0.125, alpha: 1)
        
        contentView.addSubview(ELIVANEVERearlyBirdDeals)
        contentView.addSubview(ELIVANEVERlastMinuteOffers)
        contentView.addSubview(ELIVANEVEtravelPodcastImageView)
        
        ELIVANEVERearlyBirdDeals.addSubview(ELIVANEVERCollectionView)
        ELIVANEVERCollectionView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            ELIVANEVERearlyBirdDeals.topAnchor.constraint(equalTo: contentView.topAnchor),
            ELIVANEVERearlyBirdDeals.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            ELIVANEVERearlyBirdDeals.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            ELIVANEVERearlyBirdDeals.heightAnchor.constraint(equalToConstant: 227),
            
            // CollectionView 撑满父容器
            ELIVANEVERCollectionView.topAnchor.constraint(equalTo: ELIVANEVERearlyBirdDeals.topAnchor),
            ELIVANEVERCollectionView.leadingAnchor.constraint(equalTo: ELIVANEVERearlyBirdDeals.leadingAnchor),
            ELIVANEVERCollectionView.trailingAnchor.constraint(equalTo: ELIVANEVERearlyBirdDeals.trailingAnchor),
            ELIVANEVERCollectionView.bottomAnchor.constraint(equalTo: ELIVANEVERearlyBirdDeals.bottomAnchor),
            
            ELIVANEVERlastMinuteOffers.topAnchor.constraint(equalTo: ELIVANEVERearlyBirdDeals.bottomAnchor, constant: 16),
            ELIVANEVERlastMinuteOffers.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            ELIVANEVERlastMinuteOffers.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            ELIVANEVERlastMinuteOffers.heightAnchor.constraint(equalToConstant: 72),
            
            ELIVANEVEtravelPodcastImageView.topAnchor.constraint(equalTo: ELIVANEVERlastMinuteOffers.bottomAnchor, constant: 16),
            ELIVANEVEtravelPodcastImageView.leadingAnchor.constraint(equalTo: ELIVANEVERlastMinuteOffers.leadingAnchor),
            ELIVANEVEtravelPodcastImageView.widthAnchor.constraint(equalToConstant: 97),
            ELIVANEVEtravelPodcastImageView.heightAnchor.constraint(equalToConstant: 24)
        ])
        
        // 初始定位到中间，实现无限轮播错觉
        DispatchQueue.main.async {
            let middleIndex = self.dummyCount / 2
            self.ELIVANEVERCollectionView.scrollToItem(at: IndexPath(item: middleIndex, section: 0), at: .centeredHorizontally, animated: false)
        }
    }

    // MARK: - UICollectionView DataSource & Delegate
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dummyCount
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "NativeCell", for: indexPath)
        
        // 移除旧图片视图，防止重用冲突
        cell.contentView.subviews.forEach { $0.removeFromSuperview() }
        
        let imgView = UIImageView(frame: cell.contentView.bounds)
        let actualIndex = indexPath.item % ELIVANEVERImageNames.count
        imgView.image = UIImage(named: ELIVANEVERImageNames[actualIndex])
        imgView.contentMode = .scaleAspectFill
        imgView.clipsToBounds = true
        cell.contentView.addSubview(imgView)
        
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: UIScreen.main.bounds.width, height: 227)
    }

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let actualIndex = indexPath.item % ELIVANEVERImageNames.count
        self.ELIVANEVERdelaghu?.ELIVANEVERexplorePage(ELIVANEVERdex: actualIndex)
    }

    // MARK: - Auto Scroll Logic
    private func ELIVANEVERstartTimer() {
        ELIVANEVERtimer?.invalidate()
        
        ELIVANEVERtimer = Timer.scheduledTimer(withTimeInterval: 2.0, repeats: true) { [weak self] _ in
            guard let self = self else { return }
            
            let collectionView = self.ELIVANEVERCollectionView
            let totalItems = collectionView.numberOfItems(inSection: 0)
            guard totalItems > 0 else { return }
            
            let visibleIndex = collectionView.indexPathsForVisibleItems
                .sorted()
                .first?.item ?? 0
            
            var nextItem = visibleIndex + 1
            
            // ✅ 到达边界，直接拉回中间，制造无限错觉
            if nextItem >= totalItems {
                nextItem = totalItems / 2
                collectionView.scrollToItem(
                    at: IndexPath(item: nextItem, section: 0),
                    at: .centeredHorizontally,
                    animated: false
                )
                return
            }
            
            collectionView.scrollToItem(
                at: IndexPath(item: nextItem, section: 0),
                at: .centeredHorizontally,
                animated: true
            )
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
