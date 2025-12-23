//
//  ELIVANEVERRoamAssistsentroller.swift
//  DgilvaSuioa
//
//  Created by  on 2025/8/13.
//

import UIKit


class ELIVANEVERRoamAssistsentroller: UIViewController {
    private var ELIVANEVERnursic:Array<Dictionary<String,Any>> = Array<Dictionary<String,Any>>()
    
    
    private var ELIVANEVERReadtic:Array<Dictionary<String,Any>> = Array<Dictionary<String,Any>>()
   
    @objc func ELIVANEVERmeditationSpots(_ sender: UIButton) {
        let ELIVANEVERvcont =  ELIVANEVERFreshOfflinentroller.init(ELIVANEVERtravelGadgets: ELIVANEVERUniversalAdapter.ELIVANEVERearPlugs.ELIVANEVERboutiqueHotels(ELIVANEVERhomestays: ""))
        self.navigationController?.pushViewController(ELIVANEVERvcont, animated: true)
    }
    private let dressCodeELIVANEVERImageView: UIImageView = {
            let ELIVANEVERiv = UIImageView()
            ELIVANEVERiv.image = UIImage(named: "ELIVANEVEdressCode")
            ELIVANEVERiv.contentMode = .scaleAspectFit
            ELIVANEVERiv.translatesAutoresizingMaskIntoConstraints = false
            return ELIVANEVERiv
        }()
        
       
    // 冥想点按钮 (Jet Lag Remedies) [cite: 34, 37]
    private lazy var ELIVANEVERmeditationButton: UIButton = {
        let ELIVANEVERbtn = UIButton(type: .custom)
        ELIVANEVERbtn.setImage(UIImage(named: "ELIVANEVEjetLagRemedies"), for: .normal)
        ELIVANEVERbtn.addTarget(self, action: #selector(ELIVANEVERmeditationSpots(_:)), for: .touchUpInside)
        ELIVANEVERbtn.translatesAutoresizingMaskIntoConstraints = false
        return ELIVANEVERbtn
    }()

    private let ELIVANEVERscrollView: UIScrollView = {
            let sv = UIScrollView()
            sv.showsVerticalScrollIndicator = false
            sv.translatesAutoresizingMaskIntoConstraints = false
            return sv
        }()
        
        private let ELIVANEVERcontentView: UIView = {
            let ELIVANEVERview = UIView()
            ELIVANEVERview.translatesAutoresizingMaskIntoConstraints = false
            return ELIVANEVERview
        }()

        // 1. 顶部 CollectionView
        private lazy var ELIVANEVERbookstoreCrawl: UICollectionView = {
            let ELIVANEVERlayout = UICollectionViewFlowLayout()
            ELIVANEVERlayout.scrollDirection = .horizontal
            let ELIVANEVERcv = UICollectionView(frame: .zero, collectionViewLayout: ELIVANEVERlayout)
            ELIVANEVERcv.backgroundColor = .clear
            ELIVANEVERcv.delegate = self
            ELIVANEVERcv.dataSource = self
            ELIVANEVERcv.register(ELIVANEVERRoamAssistCell.self, forCellWithReuseIdentifier: "ELIVANEVERRoamAssistCell")
            ELIVANEVERcv.translatesAutoresizingMaskIntoConstraints = false
            return ELIVANEVERcv
        }()
   

    
    private let ELIVANEVERfairTrade: UILabel = {
        let ELIVANEVERlabel = UILabel()
        ELIVANEVERlabel.text = "Hvoztf tPvigcskzs".ELIVANEVERprivacyStack()
        ELIVANEVERlabel.textColor = .white
        ELIVANEVERlabel.font = .systemFont(ofSize: 18, weight: .bold)
        ELIVANEVERlabel.translatesAutoresizingMaskIntoConstraints = false
        return ELIVANEVERlabel
    }()
    
   
        
    // 2. Whale Watching 按钮组 (功能入口)
    private let ELIVANEVERwhaleWatching = UIButton()
    
    private let ELIVANEVERbirdSanctuaries = UILabel.createStackLabel(text: "1")
    
    private let ELIVANEVERwhaleWatching1 = UIButton()
    private let ELIVANEVERbirdSanctuaries1 = UILabel.createStackLabel(text: "2")
    
    private let ELIVANEVERwhaleWatching2 = UIButton()
    private let ELIVANEVERbirdSanctuaries2 = UILabel.createStackLabel(text: "3")

    
    //big recommemd
    private let ELIVANEVERBigPicRetreats: UIButton = {
        let ELIVANEVERbtn = UIButton()
        ELIVANEVERbtn.layer.cornerRadius = 24
        ELIVANEVERbtn.clipsToBounds = true
        ELIVANEVERbtn.backgroundColor = .systemGray6
        ELIVANEVERbtn.translatesAutoresizingMaskIntoConstraints = false
        return ELIVANEVERbtn
    }()
//    heart
    private let ELIVANEVERsouvenirIdeas: UIButton = {
        let ELIVANEVERbtn = UIButton()
        ELIVANEVERbtn.setImage(UIImage.init(named: "ELIVANEVEpackingCubes"), for: .normal)
        ELIVANEVERbtn.translatesAutoresizingMaskIntoConstraints = false
        return ELIVANEVERbtn
    }()
    
    
    private let ELIVANEVEtitlerade: UILabel = {
        let ELIVANEVERlabel = UILabel()
        
        ELIVANEVERlabel.textColor = .white
        ELIVANEVERlabel.font = .systemFont(ofSize: 18, weight: .bold)
        ELIVANEVERlabel.translatesAutoresizingMaskIntoConstraints = false
        return ELIVANEVERlabel
    }()
    
    let elivaJourneyIndicator = UIActivityIndicatorView(style: .large)
//   
//report
    private let ELIVANEVERthriftStores: UIButton = {
        let bELIVANEVERtn = UIButton()
        bELIVANEVERtn.setImage(UIImage(named: "ELIVANEVEinteractiveMaps"), for: .normal)
        bELIVANEVERtn.translatesAutoresizingMaskIntoConstraints = false
        return bELIVANEVERtn
    }()
//    
    private let ELIVANEVERecommendedde: UILabel = {
        let laELIVANEVERbel = UILabel()
        laELIVANEVERbel.text = "Rhepcgohmembefngdtemd".ELIVANEVERprivacyStack()
        laELIVANEVERbel.textColor = .white
        laELIVANEVERbel.font = .systemFont(ofSize: 18, weight: .bold)
        laELIVANEVERbel.translatesAutoresizingMaskIntoConstraints = false
        return laELIVANEVERbel
    }()
    private lazy var ELIVANEVERbeachCleanup: UICollectionView = {
            let layELIVANEVERout = UICollectionViewFlowLayout()
            layELIVANEVERout.scrollDirection = .horizontal
            let ELIVANEVERcv = UICollectionView(frame: .zero, collectionViewLayout: layELIVANEVERout)
            ELIVANEVERcv.backgroundColor = .clear
            ELIVANEVERcv.dataSource = self
            ELIVANEVERcv.delegate = self
            ELIVANEVERcv.register(UINib(nibName: "ELIVANEVERDErrmToTable_Cell", bundle: nil), forCellWithReuseIdentifier: "ELIVANEVERDErrmToTable_Cell")
            ELIVANEVERcv.translatesAutoresizingMaskIntoConstraints = false
            return ELIVANEVERcv
        }()
    
    
    private func ELIVANEVERupdateinghud()  {
        let ELIVANEVERupword = Array(ELIVANEVERReadtic.reversed())
        
        let onre = (ELIVANEVERupword.first?["panoramicViews"] as? Array<String>)?.first ?? ""
        
        let erre = (ELIVANEVERupword[1]["panoramicViews"] as? Array<String>)?.first ?? ""
        
        let erresse = (ELIVANEVERupword[2]["panoramicViews"] as? Array<String>)?.first ?? ""
        
        self.ELIVANEVERmetaphorical(onre, ELIVANEVERfreshOffline: nil,ELIVANEVERfresnnBUtton: ELIVANEVERwhaleWatching) 
        
        self.ELIVANEVERmetaphorical(erre, ELIVANEVERfreshOffline: nil,ELIVANEVERfresnnBUtton: ELIVANEVERwhaleWatching1)
        
        self.ELIVANEVERmetaphorical(erresse, ELIVANEVERfreshOffline: nil,ELIVANEVERfresnnBUtton: ELIVANEVERwhaleWatching2)
        
        self.ELIVANEVERmetaphorical(onre, ELIVANEVERfreshOffline: nil,ELIVANEVERfresnnBUtton: ELIVANEVERBigPicRetreats)
        ELIVANEVEtitlerade.text = ELIVANEVERReadtic.first?["petFriendly"] as? String
//
//        self.ELIVANEVERmetaphorical(ELIVANEVERReadtic.first?["seniorTravel"] as? String ?? "", ELIVANEVERfreshOffline: nil,ELIVANEVERfresnnBUtton: ELIVANEVERsouvenirIdeas)
//        self.ELIVANEVERsouvenirIdeas.setTitle(ELIVANEVERReadtic.first?["familyFriendly"] as? String ?? "", for: .normal)

        
        
    }
    
    @objc func ELIVANEVERsjisnubdef(ELIVANEVERfvdjng:UIButton)  {
        let ELIVANEVERupword = Array(ELIVANEVERReadtic.reversed())
        
        var dymELIVANEVERID:Int = 0
        
        if ELIVANEVERfvdjng.tag == 10{
            dymELIVANEVERID = (ELIVANEVERupword.first?["digitalNomad"] as? Int ?? 0)
            
        }
        
        if ELIVANEVERfvdjng.tag == 11{
            dymELIVANEVERID = (ELIVANEVERupword[1]["digitalNomad"] as? Int ?? 0)
            
        }
        
        if ELIVANEVERfvdjng.tag == 12{
            dymELIVANEVERID = (ELIVANEVERupword[2]["digitalNomad"] as? Int ?? 0)
            
        }
        
        let vcont =  ELIVANEVERFreshOfflinentroller.init(ELIVANEVERtravelGadgets: ELIVANEVERUniversalAdapter.ELIVANEVERsleepingBag.ELIVANEVERboutiqueHotels(ELIVANEVERhomestays: "\(dymELIVANEVERID)"))
        self.navigationController?.pushViewController(vcont, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
       
        setupConstraints()
        elivaJourneyIndicator.hidesWhenStopped = true
        elivaJourneyIndicator.center = view.center
      
        view.addSubview(elivaJourneyIndicator)
        let ELIVANEVERringBaseCamp:Dictionary<String,Any> = ["itineraryPlanner":"21747543"]
       
        
        
        
        ELIVANEVERhandicraftWorkshops()
        var ELIVANEVERringBaseCamp1:Dictionary<String,Any> = ["localCuisine":"21747543"]
        ELIVANEVERringBaseCamp1["natureTrails"] = 1
        
        ELIVANEVERreefRestoration()
        ELIVANEVERkosherEateries()
        elivaJourneyIndicator.startAnimating()
        ELIVANEVERwhaleWatching.tag = 10
        ELIVANEVERwhaleWatching.addTarget(self, action: #selector(ELIVANEVERsjisnubdef(ELIVANEVERfvdjng:)), for: .touchUpInside)
        
        
        ELIVANEVERwhaleWatching1.tag = 11
        ELIVANEVERwhaleWatching2.tag = 12
        ELIVANEVERBigPicRetreats.tag = 10
        
        ELIVANEVERringBaseCamp1["wildlifeSpotting"] = 22
        ELIVANEVERringBaseCamp1["streetFoodGuide"] = 1
       
        
        ELIVANEVERFreeshoffCell.baggageELIVANEVERAllowance(visaELIVANEVERAssistance: "/wulhlz/dvqiag", travelELIVANEVERInsurance: ELIVANEVERringBaseCamp) { heritag in
            self.elivaJourneyIndicator.stopAnimating()
            
            guard let underwater = heritag as? Dictionary<String,Any> else {
               
                return  }
            
            guard let rvParks = underwater["dfastja".ELIVANEVERprivacyStack()] as? Array<Dictionary<String,Any>> else {
                
                return  }
            
            self.ELIVANEVERnursic = rvParks
            self.ELIVANEVERbookstoreCrawl.reloadData()
        } localELIVANEVERLaws: { unesco in
            self.elivaJourneyIndicator.stopAnimating()
        }
        ELIVANEVERwhaleWatching1.addTarget(self, action: #selector(ELIVANEVERsjisnubdef(ELIVANEVERfvdjng:)), for: .touchUpInside)
        
        
        ELIVANEVERFreeshoffCell.baggageELIVANEVERAllowance(visaELIVANEVERAssistance: "/zuzshoez/iyeco", travelELIVANEVERInsurance: ELIVANEVERringBaseCamp1) { heritag in
            self.elivaJourneyIndicator.stopAnimating()
            
            self.ELIVANEVERprocessArchaeologicalFindings(heritag ?? [])
        } localELIVANEVERLaws: { unesco in
            self.elivaJourneyIndicator.stopAnimating()
        }
        ELIVANEVERwhaleWatching2.addTarget(self, action: #selector(ELIVANEVERsjisnubdef(ELIVANEVERfvdjng:)), for: .touchUpInside)
        ELIVANEVERBigPicRetreats.addTarget(self, action: #selector(ELIVANEVERsjisnubdef(ELIVANEVERfvdjng:)), for: .touchUpInside)
     
    }
    private func setupUI() {
        
            view.backgroundColor = UIColor(red: 0.09, green: 0.10, blue: 0.13, alpha: 1.0)
            
            view.addSubview(dressCodeELIVANEVERImageView)
            view.addSubview(ELIVANEVERmeditationButton)
            view.addSubview(ELIVANEVERbookstoreCrawl)
            view.addSubview(ELIVANEVERscrollView)
            
            ELIVANEVERscrollView.addSubview(ELIVANEVERcontentView)
            
            // 组装 travelPodcast 容器
//            contentView.addSubview(ELIVANEVERtravelPodcast)
        ELIVANEVERcontentView.addSubview(ELIVANEVERfairTrade)
        
        ELIVANEVERcontentView.addSubview(ELIVANEVERwhaleWatching)
        ELIVANEVERcontentView.addSubview(ELIVANEVERbirdSanctuaries)
        ELIVANEVERcontentView.addSubview(ELIVANEVERwhaleWatching1)
        ELIVANEVERcontentView.addSubview(ELIVANEVERbirdSanctuaries1)
        ELIVANEVERcontentView.addSubview(ELIVANEVERwhaleWatching2)
        ELIVANEVERcontentView.addSubview(ELIVANEVERbirdSanctuaries2)
        
        ELIVANEVERwhaleWatching.translatesAutoresizingMaskIntoConstraints = false
        ELIVANEVERbirdSanctuaries.translatesAutoresizingMaskIntoConstraints = false
        ELIVANEVERwhaleWatching1.translatesAutoresizingMaskIntoConstraints = false
        ELIVANEVERbirdSanctuaries1.translatesAutoresizingMaskIntoConstraints = false
        ELIVANEVERwhaleWatching2.translatesAutoresizingMaskIntoConstraints = false
        ELIVANEVERbirdSanctuaries2.translatesAutoresizingMaskIntoConstraints = false
        ELIVANEVERBigPicRetreats.translatesAutoresizingMaskIntoConstraints = false
        
            
        ELIVANEVERcontentView.addSubview(ELIVANEVERBigPicRetreats)
        
        ELIVANEVERcontentView.addSubview(ELIVANEVERthriftStores)
           
        ELIVANEVERcontentView.addSubview(ELIVANEVERsouvenirIdeas)
        ELIVANEVERcontentView.addSubview(ELIVANEVEtitlerade)
            ELIVANEVERcontentView.addSubview(ELIVANEVERecommendedde)
            ELIVANEVERcontentView.addSubview(ELIVANEVERbeachCleanup)
       
    }

        private func setupConstraints() {
            NSLayoutConstraint.activate([
                // 顶部固定组件
                dressCodeELIVANEVERImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
                dressCodeELIVANEVERImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
                
                ELIVANEVERmeditationButton.centerYAnchor.constraint(equalTo: dressCodeELIVANEVERImageView.centerYAnchor),
                ELIVANEVERmeditationButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
                
                ELIVANEVERbookstoreCrawl.topAnchor.constraint(equalTo: dressCodeELIVANEVERImageView.bottomAnchor, constant: 15),
                ELIVANEVERbookstoreCrawl.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                ELIVANEVERbookstoreCrawl.trailingAnchor.constraint(equalTo: view.trailingAnchor),
                ELIVANEVERbookstoreCrawl.heightAnchor.constraint(equalToConstant: 60),

                // 滚动区域
                ELIVANEVERscrollView.topAnchor.constraint(equalTo: ELIVANEVERbookstoreCrawl.bottomAnchor, constant: 10),
                ELIVANEVERscrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                ELIVANEVERscrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
                ELIVANEVERscrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
                
                ELIVANEVERcontentView.topAnchor.constraint(equalTo: ELIVANEVERscrollView.topAnchor),
                ELIVANEVERcontentView.heightAnchor.constraint(equalToConstant: 800),
                
                ELIVANEVERcontentView.leadingAnchor.constraint(equalTo: ELIVANEVERscrollView.leadingAnchor),
                ELIVANEVERcontentView.trailingAnchor.constraint(equalTo: ELIVANEVERscrollView.trailingAnchor),
                ELIVANEVERcontentView.bottomAnchor.constraint(equalTo: ELIVANEVERscrollView.bottomAnchor),
                ELIVANEVERcontentView.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width),

                
                ///hotpick
                ELIVANEVERfairTrade.topAnchor.constraint(equalTo: ELIVANEVERcontentView.topAnchor),
                ELIVANEVERfairTrade.leadingAnchor.constraint(equalTo: ELIVANEVERcontentView.leadingAnchor,constant: 16),
                ELIVANEVERfairTrade.heightAnchor.constraint(equalToConstant: 20),
                
              
                ELIVANEVERwhaleWatching.topAnchor.constraint(equalTo: ELIVANEVERfairTrade.bottomAnchor, constant: 12),
                ELIVANEVERwhaleWatching.leadingAnchor.constraint(equalTo: ELIVANEVERcontentView.leadingAnchor),
                ELIVANEVERwhaleWatching.widthAnchor.constraint(equalToConstant:50),
                ELIVANEVERwhaleWatching.heightAnchor.constraint(equalToConstant: 57),
                
                ELIVANEVERbirdSanctuaries.trailingAnchor.constraint(equalTo: ELIVANEVERwhaleWatching.trailingAnchor, constant: -6),
                ELIVANEVERbirdSanctuaries.bottomAnchor.constraint(equalTo: ELIVANEVERwhaleWatching.bottomAnchor, constant: -6),
                
                
                ELIVANEVERwhaleWatching1.topAnchor.constraint(equalTo: ELIVANEVERwhaleWatching.bottomAnchor, constant: 7),
                ELIVANEVERwhaleWatching1.leadingAnchor.constraint(equalTo: ELIVANEVERcontentView.leadingAnchor),
                ELIVANEVERwhaleWatching1.widthAnchor.constraint(equalToConstant:50),
                ELIVANEVERwhaleWatching1.heightAnchor.constraint(equalToConstant: 57),

                ELIVANEVERbirdSanctuaries1.trailingAnchor.constraint(equalTo: ELIVANEVERwhaleWatching1.trailingAnchor, constant: -6),
                ELIVANEVERbirdSanctuaries1.bottomAnchor.constraint(equalTo: ELIVANEVERwhaleWatching1.bottomAnchor, constant: -6),
              
                
                ELIVANEVERwhaleWatching2.topAnchor.constraint(equalTo: ELIVANEVERwhaleWatching1.bottomAnchor, constant: 7),
                ELIVANEVERwhaleWatching2.leadingAnchor.constraint(equalTo: ELIVANEVERcontentView.leadingAnchor),
                ELIVANEVERwhaleWatching2.widthAnchor.constraint(equalToConstant:50),
                ELIVANEVERwhaleWatching2.heightAnchor.constraint(equalToConstant: 57),
                ELIVANEVERbirdSanctuaries2.trailingAnchor.constraint(equalTo: ELIVANEVERwhaleWatching2.trailingAnchor, constant: -6),
                ELIVANEVERbirdSanctuaries2.bottomAnchor.constraint(equalTo: ELIVANEVERwhaleWatching2.bottomAnchor, constant: -6),
              
                ///big pick
                ELIVANEVERBigPicRetreats.topAnchor.constraint(equalTo: ELIVANEVERfairTrade.bottomAnchor, constant: 12),
                ELIVANEVERBigPicRetreats.leadingAnchor.constraint(equalTo: ELIVANEVERwhaleWatching.trailingAnchor,constant: 12),
                ELIVANEVERBigPicRetreats.trailingAnchor.constraint(equalTo:ELIVANEVERcontentView.trailingAnchor ,constant: -12),
                ELIVANEVERBigPicRetreats.heightAnchor.constraint(equalToConstant: 184),
///
                ///report
                ELIVANEVERthriftStores.widthAnchor.constraint(equalToConstant: 30),
                ELIVANEVERthriftStores.heightAnchor.constraint(equalToConstant: 30),
                ELIVANEVERthriftStores.trailingAnchor.constraint(equalTo: ELIVANEVERBigPicRetreats.trailingAnchor, constant: -12),
                ELIVANEVERthriftStores.bottomAnchor.constraint(equalTo: ELIVANEVERBigPicRetreats.bottomAnchor, constant: -12),
                
                ELIVANEVEtitlerade.leadingAnchor.constraint(equalTo: ELIVANEVERBigPicRetreats.leadingAnchor, constant: 12),
                
                ELIVANEVEtitlerade.trailingAnchor.constraint(equalTo: ELIVANEVERthriftStores.leadingAnchor, constant: -10),
                ELIVANEVEtitlerade.bottomAnchor.constraint(equalTo: ELIVANEVERthriftStores.bottomAnchor, constant: -10),
                
                //heart
                ELIVANEVERsouvenirIdeas.widthAnchor.constraint(equalToConstant: 30),
                ELIVANEVERsouvenirIdeas.heightAnchor.constraint(equalToConstant: 30),
                ELIVANEVERsouvenirIdeas.topAnchor.constraint(equalTo: ELIVANEVERBigPicRetreats.topAnchor, constant: 12),
                ELIVANEVERsouvenirIdeas.rightAnchor.constraint(equalTo: ELIVANEVERBigPicRetreats.rightAnchor, constant: -12),
                //recommend
                ELIVANEVERecommendedde.topAnchor.constraint(equalTo: ELIVANEVERBigPicRetreats.bottomAnchor, constant:20),
                ELIVANEVERecommendedde.leadingAnchor.constraint(equalTo: ELIVANEVERfairTrade.leadingAnchor,constant:0),
                // 底部 BeachCleanup 列表
                ELIVANEVERbeachCleanup.topAnchor.constraint(equalTo: ELIVANEVERecommendedde.bottomAnchor, constant: 12),
                ELIVANEVERbeachCleanup.leadingAnchor.constraint(equalTo: ELIVANEVERcontentView.leadingAnchor),
                ELIVANEVERbeachCleanup.trailingAnchor.constraint(equalTo: ELIVANEVERcontentView.trailingAnchor),
                ELIVANEVERbeachCleanup.heightAnchor.constraint(equalToConstant: 280),

            ])
        }
    
    private func ELIVANEVERprocessArchaeologicalFindings(_ artifact: Any) {
        guard let ruins = artifact as? Dictionary<String, Any>,
              let artifacts = ruins["dvaptua".ELIVANEVERprivacyStack()] as? [Dictionary<String, Any>] else {
            return
        }
        
        ELIVANEVERuncoverAncientRuins(ELIVANEVERartifacts: artifacts)
    }

    private func ELIVANEVERuncoverAncientRuins(ELIVANEVERartifacts: [Dictionary<String, Any>]) {
        ELIVANEVERBigPicRetreats(ELIVANEVERpaoif: ELIVANEVERartifacts)
    }
    
   
    
    
    
    private func ELIVANEVERBigPicRetreats(ELIVANEVERpaoif:Array<Dictionary<String,Any>>)  {
        self.ELIVANEVERReadtic = ELIVANEVERpaoif.filter({ zlxmdk in
            zlxmdk["baggageAllowance"] as? String == nil
        })
        self.ELIVANEVERbeachCleanup.reloadData()
        
        ELIVANEVERupdateinghud()
    }
    private func ELIVANEVERreefRestoration()  {
        ELIVANEVERbookstoreCrawl.delegate = self
        ELIVANEVERbookstoreCrawl.dataSource  = self
        
        ELIVANEVERbookstoreCrawl.register(ELIVANEVERDErrmToTable_Cell.self, forCellWithReuseIdentifier: "ELIVANEVERDErrmToTable_Cell")
        
        let ELIVANEVERflopsk = UICollectionViewFlowLayout.init()
        ELIVANEVERflopsk.itemSize = CGSize.init(width: 117, height: 52)
        ELIVANEVERflopsk.minimumLineSpacing = 12
        ELIVANEVERflopsk.minimumInteritemSpacing = 12
        ELIVANEVERflopsk.scrollDirection = .horizontal
        ELIVANEVERbookstoreCrawl.collectionViewLayout = ELIVANEVERflopsk
    }
    
    private func ELIVANEVERkosherEateries()  {
        ELIVANEVERbeachCleanup.delegate = self
        ELIVANEVERbeachCleanup.dataSource  = self
        
        ELIVANEVERbeachCleanup.register(ELIVANEVERRoamAssistCell.self, forCellWithReuseIdentifier: "ELIVANEVERRoamAssistCell")
        
        let ELIVANEVERflopsk = UICollectionViewFlowLayout.init()
        ELIVANEVERflopsk.itemSize = CGSize.init(width: 212, height: 276)
        ELIVANEVERflopsk.minimumLineSpacing = 12
        ELIVANEVERflopsk.minimumInteritemSpacing = 12
        ELIVANEVERflopsk.scrollDirection = .horizontal
        ELIVANEVERbeachCleanup.collectionViewLayout = ELIVANEVERflopsk
    }
    
    private func ELIVANEVERhandicraftWorkshops()  {
//        ELIVANEVERtravelPodcast.layer.cornerRadius = 24
//        ELIVANEVERtravelPodcast.layer.masksToBounds = true
//       
        ELIVANEVERBigPicRetreats.layer.cornerRadius = 24
        ELIVANEVERBigPicRetreats.layer.masksToBounds = true
       
        
        
        
        ELIVANEVERwhaleWatching.layer.cornerRadius = 8
        ELIVANEVERwhaleWatching.layer.masksToBounds = true
        
        ELIVANEVERwhaleWatching1.layer.cornerRadius = 8
        ELIVANEVERwhaleWatching1.layer.masksToBounds = true
       
        
        ELIVANEVERwhaleWatching2.layer.cornerRadius = 8
        ELIVANEVERwhaleWatching2.layer.masksToBounds = true
       
        
        ELIVANEVERbirdSanctuaries.layer.cornerRadius = 9
        ELIVANEVERbirdSanctuaries.layer.masksToBounds = true
       
        
        ELIVANEVERbirdSanctuaries1.layer.cornerRadius = 9
        ELIVANEVERbirdSanctuaries1.layer.masksToBounds = true
       
        ELIVANEVERbirdSanctuaries2.layer.cornerRadius = 9
        ELIVANEVERbirdSanctuaries2.layer.masksToBounds = true
       
        
    }

}


extension ELIVANEVERRoamAssistsentroller:UICollectionViewDelegate,UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.ELIVANEVERbookstoreCrawl {
            return ELIVANEVERnursic.count
        }
        
        return ELIVANEVERReadtic.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == self.ELIVANEVERbookstoreCrawl {
            let ELIVANEVERcefldl = collectionView.dequeueReusableCell(withReuseIdentifier:"ELIVANEVERDErrmToTable_Cell", for: indexPath) as! ELIVANEVERDErrmToTable_Cell
            ELIVANEVERcefldl.ELIVANEVERterrainAnalysis.text = ELIVANEVERnursic[indexPath.row]["offlineMaps"] as? String
            if let path = ELIVANEVERnursic[indexPath.row]["augmentedReality"] as? String  {
                self.ELIVANEVERmetaphorical(path, ELIVANEVERfreshOffline:ELIVANEVERcefldl.ELIVANEVERtimeLapse)
            }
            
            return ELIVANEVERcefldl
        }
        
        let ELIVANEVERcefldl = collectionView.dequeueReusableCell(withReuseIdentifier:"ELIVANEVERRoamAssistCell", for: indexPath) as! ELIVANEVERRoamAssistCell
        
        let ELIVANEVERVenues = ELIVANEVERReadtic[indexPath.row]
        
        ELIVANEVERcefldl.ELIVANEVERbeachCleanup.addTarget(self, action: #selector(ELIVANEVERetiquetteTipsTapped), for: .touchUpInside)
        
        if let ELIVANEVERpath = ELIVANEVERVenues["seniorTravel"] as? String {
            self.ELIVANEVERmetaphorical(ELIVANEVERpath, ELIVANEVERfreshOffline: ELIVANEVERcefldl.ELIVANEVERfleaMarkets.imageView!)
        }
        
        if let path = (ELIVANEVERVenues["panoramicViews"] as? Array<String>)?.first  {
            self.ELIVANEVERmetaphorical(path, ELIVANEVERfreshOffline: ELIVANEVERcefldl.ELIVANEVERthriftStores)
        }
        
        
        ELIVANEVERcefldl.ELIVANEVERfleaMarkets.setTitle(ELIVANEVERVenues["familyFriendly"] as? String ?? "", for: .normal)
        
        ELIVANEVERcefldl.ELIVANEVERnightBazaars.text = ELIVANEVERVenues["petFriendly"] as? String
        return ELIVANEVERcefldl
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView == self.ELIVANEVERbookstoreCrawl {
            let ELIVANEVERvcont =  ELIVANEVERFreshOfflinentroller.init(ELIVANEVERtravelGadgets: ELIVANEVERUniversalAdapter.ELIVANEVERtoiletryKit.ELIVANEVERboutiqueHotels(ELIVANEVERhomestays: "\(ELIVANEVERnursic[indexPath.row]["geoTagging"] as? Int ?? 0)"))
            self.navigationController?.pushViewController(ELIVANEVERvcont, animated: true)
            return
        }
        let ELIVANEVERvcont =  ELIVANEVERFreshOfflinentroller.init(ELIVANEVERtravelGadgets: ELIVANEVERUniversalAdapter.ELIVANEVERsleepingBag.ELIVANEVERboutiqueHotels(ELIVANEVERhomestays: "\(ELIVANEVERReadtic[indexPath.row]["digitalNomad"] as? Int ?? 0)"))
        self.navigationController?.pushViewController(ELIVANEVERvcont, animated: true)
    }
}


extension UIButton {
    static func createIconStackButton() -> UIButton {
        let btn = UIButton()
       
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }
}

extension UILabel {
    static func createStackLabel(text: String) -> UILabel {
        let label = UILabel()
        label.text = text
        label.textColor = .white
        label.font = .systemFont(ofSize: 12)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }
}
