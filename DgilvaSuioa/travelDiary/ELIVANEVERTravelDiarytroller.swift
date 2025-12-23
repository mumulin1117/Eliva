//
//  ELIVANEVERTravelDiarytroller.swift
//  DgilvaSuioa
//
//  Created by  on 2025/8/13.
//

import UIKit

class ELIVANEVERTravelDiarytroller: UIViewController {
    enum ELIVANEVERState {
            case preparingBaseCamp
            case launchingDiscovery
            case processingFindings
            case displayingResults
            case error(Error)
        }
    
    private var ELIVANEVERstagete:ELIVANEVERState = .launchingDiscovery
    
    @IBOutlet weak var ELIVANEVERrvParks: UIButton!
    
    @IBOutlet weak var ELIVANEVERsunsetLocations: UIImageView!
    
    
    @IBOutlet weak var ELIVANEVERdigitalNomad: UIButton!
    
    @IBOutlet weak var ELIVANEVERmeditationSpots: UIButton!
    
    
    @IBAction func ELIVANEVERglampingSites(_ sender: UIButton) {
        var ELIVANEVERssedfrinh:String = ""
        ELIVANEVERstagete = .launchingDiscovery
        switch sender.tag {
        case 60:
            ELIVANEVERstagete = .launchingDiscovery
            ELIVANEVERssedfrinh =  ELIVANEVERUniversalAdapter.ELIVANEVERquickDryTowel.ELIVANEVERboutiqueHotels(ELIVANEVERhomestays: "")
        case 70:
            ELIVANEVERstagete = .preparingBaseCamp
            ELIVANEVERssedfrinh =  ELIVANEVERUniversalAdapter.ELIVANEVERtideTables.ELIVANEVERboutiqueHotels(ELIVANEVERhomestays: "")
        case 80:
            ELIVANEVERstagete = .processingFindings
            ELIVANEVERssedfrinh =  ELIVANEVERUniversalAdapter.ELIVANEVERcompassApp.ELIVANEVERboutiqueHotels(ELIVANEVERhomestays: "")
        case 90:
            ELIVANEVERstagete = .launchingDiscovery
            ELIVANEVERssedfrinh =  ELIVANEVERUniversalAdapter.ELIVANEVERstarGazing.ELIVANEVERboutiqueHotels(ELIVANEVERhomestays: "")
        case 100:
            ELIVANEVERstagete = .processingFindings
            ELIVANEVERssedfrinh =  ELIVANEVERUniversalAdapter.ELIVANEVERauroraForecast.ELIVANEVERboutiqueHotels(ELIVANEVERhomestays: "")
        case 110:
            ELIVANEVERstagete = .displayingResults
            ELIVANEVERssedfrinh =  ELIVANEVERUniversalAdapter.ELIVANEVERmultiTool.ELIVANEVERboutiqueHotels(ELIVANEVERhomestays: "")
        default:
            break
        }
        
        let vcont =  ELIVANEVERFreshOfflinentroller.init(ELIVANEVERtravelGadgets: ELIVANEVERssedfrinh )
        self.navigationController?.pushViewController(vcont, animated: true)
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        ELIVANEVERdigitalNomad.titleLabel?.numberOfLines = 2
        
        ELIVANEVERmeditationSpots.titleLabel?.numberOfLines = 2
        ELIVANEVERdigitalNomad.titleLabel?.textAlignment = .center
        
        ELIVANEVERdigitalNomad.setTitle("0\nFollow", for: .normal)
        
        
        ELIVANEVERrvParks.setTitle(" pEjdgigt".ELIVANEVERprivacyStack(), for: .normal)
        
        ELIVANEVERmeditationSpots.titleLabel?.textAlignment = .center
        
        ELIVANEVERmeditationSpots.setTitle("0\nFans", for: .normal)
        
        ELIVANEVERdressCode()
    }
    

    func ELIVANEVERdressCode()  {
        ELIVANEVERsunsetLocations.layer.cornerRadius =  50
        ELIVANEVERsunsetLocations.layer.masksToBounds = true
        
        ELIVANEVERrvParks.layer.cornerRadius = 12
        ELIVANEVERrvParks.layer.masksToBounds = true
    }
}
