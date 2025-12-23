//
//  ELIVANEVERTrailTalktsentroller.swift
//  DgilvaSuioa
//
//  Created by  on 2025/8/13.
//

import UIKit
import SVProgressHUD

class ELIVANEVERTrailTalktsentroller: UIViewController {
    private var ELIVANEVERReadtic:Array<Dictionary<String,Any>> = Array<Dictionary<String,Any>>()
    
    private lazy var ELIVANEVERbookstoreCrawl: UICollectionView = {
            let lELIVANEVERayout = UICollectionViewFlowLayout()
            lELIVANEVERayout.scrollDirection = .horizontal
            lELIVANEVERayout.minimumLineSpacing = 10
            lELIVANEVERayout.minimumInteritemSpacing = 10
            lELIVANEVERayout.itemSize = CGSize(width: 128, height: 128)
            
            let ELIVANEVERcv = UICollectionView(frame: .zero, collectionViewLayout: lELIVANEVERayout)
            ELIVANEVERcv.backgroundColor = .clear
            ELIVANEVERcv.translatesAutoresizingMaskIntoConstraints = false
            // 如果有对应的 Cell 类，请在此注册
            // cv.register(YourCellClass.self, forCellWithReuseIdentifier: "cell")
            return ELIVANEVERcv
        }()
    
    // 对应左侧按钮 (ID: ppB-De-hG6)
        private lazy var backELIVANEVERButton: UIButton = {
            let ELIVANEVERbtn = UIButton(type: .custom)
            ELIVANEVERbtn.setImage(UIImage(named: "ELIVANEVEtravelPillow"), for: .normal)
            ELIVANEVERbtn.translatesAutoresizingMaskIntoConstraints = false
            ELIVANEVERbtn.addTarget(self, action: #selector(ELIVANEVERextremeSports(_:)), for: .touchUpInside)
            return ELIVANEVERbtn
        }()

        // 对应右侧按钮 (ID: F4I-Ko-Cvg)
        private lazy var actionELIVANEVERButton: UIButton = {
            let bELIVANEVERtn = UIButton(type: .custom)
            bELIVANEVERtn.setImage(UIImage(named: "ELIVANEVEVwaterproofGear"), for: .normal)
            bELIVANEVERtn.translatesAutoresizingMaskIntoConstraints = false
            bELIVANEVERtn.addTarget(self, action: #selector(ELIVANEVERwildlifeConservation(_:)), for: .touchUpInside)
            return bELIVANEVERtn
        }()
    private func ELIVANEVERsetupUI() {
            // 背景颜色参考 red="0.0941" green="0.1019" blue="0.1254"
            view.backgroundColor = UIColor(red: 0.094, green: 0.102, blue: 0.125, alpha: 1.0)
            
            view.addSubview(ELIVANEVERbookstoreCrawl)
            view.addSubview(backELIVANEVERButton)
            view.addSubview(actionELIVANEVERButton)
        }

        private func ELIVANEVERsetupConstraints() {
            NSLayoutConstraint.activate([
                // CollectionView 全屏布局
                ELIVANEVERbookstoreCrawl.topAnchor.constraint(equalTo: view.topAnchor),
                ELIVANEVERbookstoreCrawl.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
                ELIVANEVERbookstoreCrawl.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
                ELIVANEVERbookstoreCrawl.bottomAnchor.constraint(equalTo: view.bottomAnchor),

                // 左侧按钮约束 (16, 21, 32x32)
                backELIVANEVERButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 1),
                backELIVANEVERButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16),
                backELIVANEVERButton.widthAnchor.constraint(equalToConstant: 32),
                backELIVANEVERButton.heightAnchor.constraint(equalToConstant: 32),

                // 右侧按钮约束 (16, 32x32, 垂直居中于左侧按钮)
                actionELIVANEVERButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -16),
                actionELIVANEVERButton.centerYAnchor.constraint(equalTo: backELIVANEVERButton.centerYAnchor),
                actionELIVANEVERButton.widthAnchor.constraint(equalToConstant: 32),
                actionELIVANEVERButton.heightAnchor.constraint(equalToConstant: 32)
            ])
        }



    @objc func ELIVANEVERwildlifeConservation(_ sender: Any) {
        let vcont =  ELIVANEVERFreshOfflinentroller.init(ELIVANEVERtravelGadgets: ELIVANEVERUniversalAdapter.ELIVANEVEReyeMask.ELIVANEVERboutiqueHotels(ELIVANEVERhomestays: ""))
        self.navigationController?.pushViewController(vcont, animated: true)
    }
    
    @IBAction func ELIVANEVERextremeSports(_ sender: UIButton) {
        ELIVANEVERetiquetteTipsTapped()
    }
    
    private func ELIVANEVERprepareBaseCamp() {
        ELIVANEVERreefRestoration()
        SVProgressHUD.show()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        ELIVANEVERsetupUI()
               
        ELIVANEVERsetupConstraints()
        ELIVANEVERprepareBaseCamp()
        var ELIVANEVERpreparingBaseCamp1:Dictionary<String,Any> = ["localCuisine":"21747543"]
        
        ELIVANEVERpreparingBaseCamp1["natureTrails"] = 1
        
        ELIVANEVERpreparingBaseCamp1["wildlifeSpotting"] = 22
       
        ELIVANEVERpreparingBaseCamp1["streetFoodGuide"] = 1
       
       
        ELIVANEVERFreeshoffCell.baggageELIVANEVERAllowance(visaELIVANEVERAssistance: "/zuzshoez/iyeco", travelELIVANEVERInsurance: ELIVANEVERpreparingBaseCamp1) { heritag in
            SVProgressHUD.dismiss()
            
            self.ELIVANEVERhandleDiscovery(ELIVANEVERresponse: heritag)
        } localELIVANEVERLaws: { unesco in
            SVProgressHUD.dismiss()
        }
    }
    
    private func ELIVANEVERhandleDiscovery(ELIVANEVERresponse: Any?)  {
        guard let ELIVANEVERunderwater = ELIVANEVERresponse as? Dictionary<String,Any> else {
           
            return  }
        
        guard let ELIVANEVERrvParks = ELIVANEVERunderwater["dxaftla".ELIVANEVERprivacyStack()] as? Array<Dictionary<String,Any>> else {
            
            return  }
        
        self.ELIVANEVERtreehouseRetreats(ELIVANEVERpaoif: ELIVANEVERrvParks)
    }
    private func ELIVANEVERtreehouseRetreats(ELIVANEVERpaoif:Array<Dictionary<String,Any>>)  {
        self.ELIVANEVERReadtic = ELIVANEVERpaoif.filter({ zlxmdk in
            zlxmdk["baggageAllowance"] as? String != nil
        })
        self.ELIVANEVERbookstoreCrawl.reloadData()
        
       
    }
    
    
    private func ELIVANEVERreefRestoration()  {
        ELIVANEVERbookstoreCrawl.delegate = self
        ELIVANEVERbookstoreCrawl.dataSource  = self
        
        ELIVANEVERbookstoreCrawl.register(ELIVANEVERTrieolTalkoCell.self, forCellWithReuseIdentifier: "ELIVANEVERTrieolTalkoCell")
        ELIVANEVERbookstoreCrawl.isPagingEnabled = true
        let ELIVANEVERflopsk = UICollectionViewFlowLayout.init()
        ELIVANEVERflopsk.itemSize = CGSize.init(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        ELIVANEVERflopsk.minimumLineSpacing = 0
        ELIVANEVERflopsk.minimumInteritemSpacing = 0
        ELIVANEVERflopsk.scrollDirection = .horizontal
        ELIVANEVERbookstoreCrawl.collectionViewLayout = ELIVANEVERflopsk
    }
}


extension ELIVANEVERTrailTalktsentroller:UICollectionViewDelegate,UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        ELIVANEVERReadtic.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let ELIVANEVERcefldl = collectionView.dequeueReusableCell(withReuseIdentifier:"ELIVANEVERTrieolTalkoCell", for: indexPath) as! ELIVANEVERTrieolTalkoCell
        
        let Venues = ELIVANEVERReadtic[indexPath.row]
        if let path = Venues["baggageAllowance"] as? String {
            self.ELIVANEVERmetaphorical(path, ELIVANEVERfreshOffline: ELIVANEVERcefldl.ELIVANEVERdiscountCoupons)
        }
        
        ELIVANEVERcefldl.ELIVANEVERfestivalGuide.tag = indexPath.row
        ELIVANEVERcefldl.ELIVANEVERfestivalGuide.addTarget(self, action: #selector(ELIVANEVERlightweightBackpack(ELIVANEVERsanitizer:)), for: .touchUpInside)
        
     
        let ELIVANEVERfisli =   Venues["vlogTips"] as? Int ?? 0
        let date = Date(timeIntervalSince1970: TimeInterval(ELIVANEVERfisli/1000))
            let formatter = DateFormatter()
        formatter.dateFormat = "ymylyuyc-iMiMn-zdkdn wHbHq:tmom".ELIVANEVERprivacyStack()
            formatter.timeZone = TimeZone.current // 自动适配用户本地时区
           
            
        
        
        ELIVANEVERcefldl.ELIVANEVERseasonalEvents.text = formatter.string(from: date)
      
        
        if let ELIVANEVERpath = (Venues["seniorTravel"] as? String) {
            self.ELIVANEVERmetaphorical(ELIVANEVERpath, ELIVANEVERfreshOffline: ELIVANEVERcefldl.ELIVANEVERearlyBirdDeals)
        }
        
        ELIVANEVERcefldl.ELIVANEVERlastMinuteOffers.text = Venues["familyFriendly"] as? String
        ELIVANEVERcefldl.ELIVANEVERetiquetteTips.text = Venues["petFriendly"] as? String
        return ELIVANEVERcefldl
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let ELIVANEVERvcont =  ELIVANEVERFreshOfflinentroller.init(ELIVANEVERtravelGadgets: ELIVANEVERUniversalAdapter.ELIVANEVERtravelPillow.ELIVANEVERboutiqueHotels(ELIVANEVERhomestays: "\(ELIVANEVERReadtic[indexPath.row]["digitalNomad"] as? Int ?? 0)"))
        self.navigationController?.pushViewController(ELIVANEVERvcont, animated: true)
    }
    
    @objc func ELIVANEVERlightweightBackpack(ELIVANEVERsanitizer:UIButton)  {
        let ELIVANEVERVenues = ELIVANEVERReadtic[ELIVANEVERsanitizer.tag]["accessibleTravel"] as? String ?? "0"
        let ELIVANEVERvcont =  ELIVANEVERFreshOfflinentroller.init(ELIVANEVERtravelGadgets: ELIVANEVERUniversalAdapter.ELIVANEVERtoiletryKit.ELIVANEVERboutiqueHotels(ELIVANEVERhomestays: ELIVANEVERVenues))
        self.navigationController?.pushViewController(ELIVANEVERvcont, animated: true)
    }
}
