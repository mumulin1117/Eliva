//
//  ELIVANEVERTrieolTalkoCell.swift
//  DgilvaSuioa
//
//  Created by  on 2025/8/13.
//

import UIKit

class ELIVANEVERTrieolTalkoCell: UICollectionViewCell {

    @IBOutlet weak var ELIVANEVERdiscountCoupons: UIImageView!
    
    @IBOutlet weak var ELIVANEVERearlyBirdDeals: UIImageView!
    
    @IBOutlet weak var ELIVANEVERlastMinuteOffers: UILabel!
    
    
    @IBOutlet weak var ELIVANEVERseasonalEvents: UILabel!
    
    @IBOutlet weak var ELIVANEVERfestivalGuide: UIButton!
    
    
    @IBOutlet weak var ELIVANEVERetiquetteTips: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        ELIVANEVERcurrencyConverter()
    }

    
    func ELIVANEVERcurrencyConverter()  {
        ELIVANEVERearlyBirdDeals.layer.cornerRadius = 22
        ELIVANEVERearlyBirdDeals.layer.masksToBounds = true
        
        
    }
}
