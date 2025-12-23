//
//  DErrmToTable Cell.swift
//  DgilvaSuioa
//
//  Created by  on 2025/8/14.
//

import UIKit

class ELIVANEVERDErrmToTable_Cell: UICollectionViewCell {

    @IBOutlet weak var ELIVANEVERtimeLapse: UIImageView!
    
    @IBOutlet weak var ELIVANEVERterrainAnalysis: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        ELIVANEVERboutiqueHotels()
        
        self.layer.cornerRadius = 18
        self.layer.masksToBounds = true
    }

    private  func ELIVANEVERboutiqueHotels()  {
        ELIVANEVERtimeLapse.layer.cornerRadius = 18
        ELIVANEVERtimeLapse.layer.masksToBounds = true
    }
}
