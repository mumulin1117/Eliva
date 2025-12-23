//
//  DErrmToTable Cell.swift
//  DgilvaSuioa
//
//  Created by  on 2025/8/14.
//

import UIKit

class ELIVANEVERDErrmToTable_Cell: UICollectionViewCell {

let ELIVANEVERtimeLapse: UIImageView = {
    let ELIVANEVERView = UIImageView()
    ELIVANEVERView.translatesAutoresizingMaskIntoConstraints = false
    ELIVANEVERView.contentMode = .scaleAspectFill
    ELIVANEVERView.clipsToBounds = true
    ELIVANEVERView.layer.cornerRadius = 18
    ELIVANEVERView.layer.masksToBounds = true
    return ELIVANEVERView
}()

let ELIVANEVERterrainAnalysis: UILabel = {
    let ELIVANEVERbel = UILabel()
    ELIVANEVERbel.translatesAutoresizingMaskIntoConstraints = false
    ELIVANEVERbel.font = .systemFont(ofSize: 14, weight: .medium)
    ELIVANEVERbel.textColor = .white
    return ELIVANEVERbel
}()

override init(frame: CGRect) {
    super.init(frame: frame)
    ELIVANEVERsetupView()
}

required init?(coder: NSCoder) {
    super.init(coder: coder)
    ELIVANEVERsetupView()
}

private func ELIVANEVERsetupView() {
    self.backgroundColor = UIColor(red: 0.149, green: 0.165, blue: 0.204, alpha: 1)
    self.layer.cornerRadius = 18
    self.layer.masksToBounds = true
    
    contentView.addSubview(ELIVANEVERtimeLapse)
    contentView.addSubview(ELIVANEVERterrainAnalysis)
    
    NSLayoutConstraint.activate([
        ELIVANEVERtimeLapse.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 8),
        ELIVANEVERtimeLapse.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
        ELIVANEVERtimeLapse.widthAnchor.constraint(equalToConstant: 36),
        ELIVANEVERtimeLapse.heightAnchor.constraint(equalToConstant: 36),
        
        ELIVANEVERterrainAnalysis.leadingAnchor.constraint(equalTo: ELIVANEVERtimeLapse.trailingAnchor, constant: 12),
        ELIVANEVERterrainAnalysis.centerYAnchor.constraint(equalTo: ELIVANEVERtimeLapse.centerYAnchor),
        ELIVANEVERterrainAnalysis.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10)
    ])
}


}
