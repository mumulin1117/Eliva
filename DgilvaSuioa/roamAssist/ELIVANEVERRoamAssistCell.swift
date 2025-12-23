//
//  ELIVANEVERRoamAssistCell.swift
//  DgilvaSuioa
//
//  Created by  on 2025/8/13.
//

import UIKit

class ELIVANEVERRoamAssistCell: UICollectionViewCell {

    
    @IBOutlet weak var ELIVANEVERthriftStores: UIImageView!
    
    
    @IBOutlet weak var ELIVANEVERfleaMarkets: UIButton!
    
    @IBOutlet weak var ELIVANEVERnightBazaars: UILabel!
    
    
    @IBOutlet weak var ELIVANEVERbeachCleanup: UIButton!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.layer.cornerRadius = 24
        self.layer.masksToBounds = true
    }

}
