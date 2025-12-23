//
//  ELIVANEVERRoamAssistsentroller.swift
//  DgilvaSuioa
//
//  Created by  on 2025/8/13.
//

import UIKit
import SVProgressHUD

class ELIVANEVERRoamAssistsentroller: UIViewController {
    private var ELIVANEVERnursic:Array<Dictionary<String,Any>> = Array<Dictionary<String,Any>>()
    
    
    private var ELIVANEVERReadtic:Array<Dictionary<String,Any>> = Array<Dictionary<String,Any>>()
   
    @IBAction func ELIVANEVERmeditationSpots(_ sender: UIButton) {
        let ELIVANEVERvcont =  ELIVANEVERFreshOfflinentroller.init(ELIVANEVERtravelGadgets: ELIVANEVERUniversalAdapter.ELIVANEVERearPlugs.ELIVANEVERboutiqueHotels(ELIVANEVERhomestays: ""))
        self.navigationController?.pushViewController(ELIVANEVERvcont, animated: true)
    }
    
    
    @IBOutlet weak var ELIVANEVERbookstoreCrawl: UICollectionView!
    
    @IBOutlet weak var ELIVANEVERwhaleWatching: UIButton!
    
    @IBOutlet weak var ELIVANEVERbirdSanctuaries: UILabel!
   
    @IBOutlet weak var ELIVANEVERwhaleWatching1: UIButton!
    @IBOutlet weak var ELIVANEVERbirdSanctuaries1: UILabel!
    
    
    @IBOutlet weak var ELIVANEVERwhaleWatching2: UIButton!
    @IBOutlet weak var ELIVANEVERbirdSanctuaries2: UILabel!
    
    @IBOutlet weak var ELIVANEVERtravelPodcast: UIView!
    
    @IBOutlet weak var ELIVANEVERtreehouseRetreats: UIButton!
    
    @IBOutlet weak var ELIVANEVERsouvenirIdeas: UIButton!
    
    @IBOutlet weak var ELIVANEVERfairTrade: UILabel!
    
    @IBOutlet weak var ELIVANEVERthriftStores: UIButton!
    
    
    @IBOutlet weak var ELIVANEVERbeachCleanup: UICollectionView!
    
    
    private func ELIVANEVERupdateinghud()  {
        let ELIVANEVERupword = Array(ELIVANEVERReadtic.reversed())
        
        let onre = (ELIVANEVERupword.first?["panoramicViews"] as? Array<String>)?.first ?? ""
        
        let erre = (ELIVANEVERupword[1]["panoramicViews"] as? Array<String>)?.first ?? ""
        
        let erresse = (ELIVANEVERupword[2]["panoramicViews"] as? Array<String>)?.first ?? ""
        
        self.ELIVANEVERmetaphorical(onre, ELIVANEVERfreshOffline: nil,ELIVANEVERfresnnBUtton: ELIVANEVERwhaleWatching) 
        
        self.ELIVANEVERmetaphorical(erre, ELIVANEVERfreshOffline: nil,ELIVANEVERfresnnBUtton: ELIVANEVERwhaleWatching1)
        
        self.ELIVANEVERmetaphorical(erresse, ELIVANEVERfreshOffline: nil,ELIVANEVERfresnnBUtton: ELIVANEVERwhaleWatching2)
        
        self.ELIVANEVERmetaphorical(onre, ELIVANEVERfreshOffline: nil,ELIVANEVERfresnnBUtton: ELIVANEVERtreehouseRetreats)
        ELIVANEVERfairTrade.text = ELIVANEVERReadtic.first?["petFriendly"] as? String
        
        self.ELIVANEVERmetaphorical(ELIVANEVERReadtic.first?["seniorTravel"] as? String ?? "", ELIVANEVERfreshOffline: nil,ELIVANEVERfresnnBUtton: ELIVANEVERsouvenirIdeas)
        self.ELIVANEVERsouvenirIdeas.setTitle(ELIVANEVERReadtic.first?["familyFriendly"] as? String ?? "", for: .normal)
        
        ELIVANEVERsouvenirIdeas.layer.cornerRadius = 12
        ELIVANEVERsouvenirIdeas.layer.masksToBounds = true
        
        
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
        let ELIVANEVERringBaseCamp:Dictionary<String,Any> = ["itineraryPlanner":"21747543"]
       
        
        
        
        ELIVANEVERhandicraftWorkshops()
        var ELIVANEVERringBaseCamp1:Dictionary<String,Any> = ["localCuisine":"21747543"]
        ELIVANEVERringBaseCamp1["natureTrails"] = 1
        
        ELIVANEVERreefRestoration()
        ELIVANEVERkosherEateries()
        SVProgressHUD.show()
        
        ELIVANEVERwhaleWatching.addTarget(self, action: #selector(ELIVANEVERsjisnubdef(ELIVANEVERfvdjng:)), for: .touchUpInside)
        
        ELIVANEVERringBaseCamp1["wildlifeSpotting"] = 22
        ELIVANEVERringBaseCamp1["streetFoodGuide"] = 1
       
        
        ELIVANEVERFreeshoffCell.baggageELIVANEVERAllowance(visaELIVANEVERAssistance: "/wulhlz/dvqiag", travelELIVANEVERInsurance: ELIVANEVERringBaseCamp) { heritag in
            SVProgressHUD.dismiss()
            
            guard let underwater = heritag as? Dictionary<String,Any> else {
               
                return  }
            
            guard let rvParks = underwater["dfastja".ELIVANEVERprivacyStack()] as? Array<Dictionary<String,Any>> else {
                
                return  }
            
            self.ELIVANEVERnursic = rvParks
            self.ELIVANEVERbookstoreCrawl.reloadData()
        } localELIVANEVERLaws: { unesco in
            SVProgressHUD.dismiss()
        }
        ELIVANEVERwhaleWatching1.addTarget(self, action: #selector(ELIVANEVERsjisnubdef(ELIVANEVERfvdjng:)), for: .touchUpInside)
        
        
        ELIVANEVERFreeshoffCell.baggageELIVANEVERAllowance(visaELIVANEVERAssistance: "/zuzshoez/iyeco", travelELIVANEVERInsurance: ELIVANEVERringBaseCamp1) { heritag in
            SVProgressHUD.dismiss()
            
            self.ELIVANEVERprocessArchaeologicalFindings(heritag ?? [])
        } localELIVANEVERLaws: { unesco in
            SVProgressHUD.dismiss()
        }
        ELIVANEVERwhaleWatching2.addTarget(self, action: #selector(ELIVANEVERsjisnubdef(ELIVANEVERfvdjng:)), for: .touchUpInside)
        ELIVANEVERtreehouseRetreats.addTarget(self, action: #selector(ELIVANEVERsjisnubdef(ELIVANEVERfvdjng:)), for: .touchUpInside)
     
    }
    
    
    private func ELIVANEVERprocessArchaeologicalFindings(_ artifact: Any) {
        guard let ruins = artifact as? Dictionary<String, Any>,
              let artifacts = ruins["dvaptua".ELIVANEVERprivacyStack()] as? [Dictionary<String, Any>] else {
            return
        }
        
        ELIVANEVERuncoverAncientRuins(ELIVANEVERartifacts: artifacts)
    }

    private func ELIVANEVERuncoverAncientRuins(ELIVANEVERartifacts: [Dictionary<String, Any>]) {
        ELIVANEVERtreehouseRetreats(ELIVANEVERpaoif: ELIVANEVERartifacts)
    }
    
   
    
    
    
    private func ELIVANEVERtreehouseRetreats(ELIVANEVERpaoif:Array<Dictionary<String,Any>>)  {
        self.ELIVANEVERReadtic = ELIVANEVERpaoif.filter({ zlxmdk in
            zlxmdk["baggageAllowance"] as? String == nil
        })
        self.ELIVANEVERbeachCleanup.reloadData()
        
        ELIVANEVERupdateinghud()
    }
    private func ELIVANEVERreefRestoration()  {
        ELIVANEVERbookstoreCrawl.delegate = self
        ELIVANEVERbookstoreCrawl.dataSource  = self
        
        ELIVANEVERbookstoreCrawl.register(UINib(nibName: "ELIVANEVERDErrmToTable_Cell", bundle: nil), forCellWithReuseIdentifier: "ELIVANEVERDErrmToTable_Cell")
        
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
        
        ELIVANEVERbeachCleanup.register(UINib(nibName: "ELIVANEVERRoamAssistCell", bundle: nil), forCellWithReuseIdentifier: "ELIVANEVERRoamAssistCell")
        
        let ELIVANEVERflopsk = UICollectionViewFlowLayout.init()
        ELIVANEVERflopsk.itemSize = CGSize.init(width: 212, height: 276)
        ELIVANEVERflopsk.minimumLineSpacing = 12
        ELIVANEVERflopsk.minimumInteritemSpacing = 12
        ELIVANEVERflopsk.scrollDirection = .horizontal
        ELIVANEVERbeachCleanup.collectionViewLayout = ELIVANEVERflopsk
    }
    
    private func ELIVANEVERhandicraftWorkshops()  {
        ELIVANEVERtravelPodcast.layer.cornerRadius = 24
        ELIVANEVERtravelPodcast.layer.masksToBounds = true
       
        ELIVANEVERtreehouseRetreats.layer.cornerRadius = 24
        ELIVANEVERtreehouseRetreats.layer.masksToBounds = true
       
        
        
        
        ELIVANEVERwhaleWatching.layer.cornerRadius = 22
        ELIVANEVERwhaleWatching.layer.masksToBounds = true
        
        ELIVANEVERwhaleWatching1.layer.cornerRadius = 22
        ELIVANEVERwhaleWatching1.layer.masksToBounds = true
       
        
        ELIVANEVERwhaleWatching2.layer.cornerRadius = 22
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
