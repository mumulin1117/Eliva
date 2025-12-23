//
//  ELIVANEVERRoamAssistCell.swift
//  DgilvaSuioa
//
//  Created by  on 2025/8/13.
//

import UIKit

import UIKit

class ELIVANEVERRoamAssistCell: UICollectionViewCell {

let ELIVANEVERthriftStores: UIImageView = {
    let ELIVANEVERView = UIImageView()
    ELIVANEVERView.translatesAutoresizingMaskIntoConstraints = false
    ELIVANEVERView.contentMode = .scaleAspectFit
    return ELIVANEVERView
}()

let ELIVANEVERnightBazaarsContainer: UIView = {
    let ELIVANEVERview = UIView()
    ELIVANEVERview.translatesAutoresizingMaskIntoConstraints = false
    ELIVANEVERview.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.2036272321)
    return ELIVANEVERview
}()

let ELIVANEVERnightBazaars: UILabel = {
    let lELIVANEVERabel = UILabel()
    lELIVANEVERabel.translatesAutoresizingMaskIntoConstraints = false
    lELIVANEVERabel.font = .systemFont(ofSize: 14, weight: .medium)
    lELIVANEVERabel.textColor = .white
    return lELIVANEVERabel
}()

let ELIVANEVERbeachCleanup: UIButton = {
    let ELIVANEVERtton = UIButton(type: .custom)
    ELIVANEVERtton.translatesAutoresizingMaskIntoConstraints = false
    ELIVANEVERtton.setImage(UIImage(named: "ELIVANEVEinteractiveMaps"), for: .normal)
    return ELIVANEVERtton
}()

let ELIVANEVERtravelGadgetsIcon: UIImageView = {
    let ELIVANEVERView = UIImageView()
    ELIVANEVERView.translatesAutoresizingMaskIntoConstraints = false
    ELIVANEVERView.contentMode = .scaleAspectFit
    ELIVANEVERView.image = UIImage(named: "ELIVANEVEtravelGadgets")
    return ELIVANEVERView
}()

let ELIVANEVERfleaMarkets: UIButton = {
    let ELIVANEVERutton = UIButton(type: .custom)
    ELIVANEVERutton.translatesAutoresizingMaskIntoConstraints = false
    ELIVANEVERutton.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.099665178569999999)
    ELIVANEVERutton.titleLabel?.font = .systemFont(ofSize: 15)
    ELIVANEVERutton.setTitleColor(UIColor(red: 1, green: 1, blue: 1, alpha: 0.40703125), for: .normal)
    return ELIVANEVERutton
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
    self.backgroundColor = .clear
    self.layer.cornerRadius = 24
    self.layer.masksToBounds = true

    contentView.addSubview(ELIVANEVERthriftStores)
    contentView.addSubview(ELIVANEVERnightBazaarsContainer)
    ELIVANEVERnightBazaarsContainer.addSubview(ELIVANEVERnightBazaars)
    ELIVANEVERnightBazaarsContainer.addSubview(ELIVANEVERbeachCleanup)
    contentView.addSubview(ELIVANEVERtravelGadgetsIcon)
    contentView.addSubview(ELIVANEVERfleaMarkets)

    NSLayoutConstraint.activate([
        ELIVANEVERthriftStores.topAnchor.constraint(equalTo: contentView.topAnchor),
        ELIVANEVERthriftStores.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
        ELIVANEVERthriftStores.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
        ELIVANEVERthriftStores.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),

        ELIVANEVERnightBazaarsContainer.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
        ELIVANEVERnightBazaarsContainer.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
        ELIVANEVERnightBazaarsContainer.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
        ELIVANEVERnightBazaarsContainer.heightAnchor.constraint(equalToConstant: 46),

        ELIVANEVERnightBazaars.leadingAnchor.constraint(equalTo: ELIVANEVERnightBazaarsContainer.leadingAnchor, constant: 14),
        ELIVANEVERnightBazaars.trailingAnchor.constraint(equalTo: ELIVANEVERnightBazaarsContainer.trailingAnchor, constant: -53),
        ELIVANEVERnightBazaars.centerYAnchor.constraint(equalTo: ELIVANEVERnightBazaarsContainer.centerYAnchor),

        ELIVANEVERbeachCleanup.trailingAnchor.constraint(equalTo: ELIVANEVERnightBazaarsContainer.trailingAnchor, constant: -8),
        ELIVANEVERbeachCleanup.centerYAnchor.constraint(equalTo: ELIVANEVERnightBazaars.centerYAnchor),
        ELIVANEVERbeachCleanup.widthAnchor.constraint(equalToConstant: 24),
        ELIVANEVERbeachCleanup.heightAnchor.constraint(equalToConstant: 30),

        ELIVANEVERtravelGadgetsIcon.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 12),
        ELIVANEVERtravelGadgetsIcon.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -12),
        ELIVANEVERtravelGadgetsIcon.widthAnchor.constraint(equalToConstant: 32),
        ELIVANEVERtravelGadgetsIcon.heightAnchor.constraint(equalToConstant: 32),

        ELIVANEVERfleaMarkets.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 6),
        ELIVANEVERfleaMarkets.bottomAnchor.constraint(equalTo: ELIVANEVERnightBazaarsContainer.topAnchor, constant: -6),
        ELIVANEVERfleaMarkets.widthAnchor.constraint(equalToConstant: 99),
        ELIVANEVERfleaMarkets.heightAnchor.constraint(equalToConstant: 32)
    ])
}


}
