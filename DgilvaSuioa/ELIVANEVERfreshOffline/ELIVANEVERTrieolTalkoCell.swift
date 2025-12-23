//
//  ELIVANEVERTrieolTalkoCell.swift
//  DgilvaSuioa
//
//  Created by  on 2025/8/13.
//

import UIKit


class ELIVANEVERTrieolTalkoCell: UICollectionViewCell {

let ELIVANEVERdiscountCoupons: UIImageView = {
    let ELIVANEVERimageView = UIImageView()
    ELIVANEVERimageView.translatesAutoresizingMaskIntoConstraints = false
    ELIVANEVERimageView.contentMode = .scaleAspectFill
    ELIVANEVERimageView.clipsToBounds = true
    return ELIVANEVERimageView
}()

let ELIVANEVERuniversalAdapterIcon: UIImageView = {
    let ELIVANEVERView = UIImageView()
    ELIVANEVERView.translatesAutoresizingMaskIntoConstraints = false
    ELIVANEVERView.contentMode = .scaleAspectFit
    ELIVANEVERView.image = UIImage(named: "ELIVANEVEuniversalAdapter")
    return ELIVANEVERView
}()

let ELIVANEVElightweighIcon: UIImageView = {
    let ELIVANEVERView = UIImageView()
    ELIVANEVERView.translatesAutoresizingMaskIntoConstraints = false
    ELIVANEVERView.contentMode = .scaleAspectFit
    ELIVANEVERView.image = UIImage(named: "ELIVANEVElightweigh")
    return ELIVANEVERView
}()

let ELIVANEVEtravelGadgetsIcon: UIImageView = {
    let ELIVANEVERView = UIImageView()
    ELIVANEVERView.translatesAutoresizingMaskIntoConstraints = false
    ELIVANEVERView.contentMode = .scaleAspectFit
    ELIVANEVERView.image = UIImage(named: "ELIVANEVEtravelGadgets")
    return ELIVANEVERView
}()

let ELIVANEVERearlyBirdDeals: UIImageView = {
    let ELIVANEVERView = UIImageView()
    ELIVANEVERView.translatesAutoresizingMaskIntoConstraints = false
    ELIVANEVERView.contentMode = .scaleAspectFill
    ELIVANEVERView.clipsToBounds = true
    return ELIVANEVERView
}()

let ELIVANEVERlastMinuteOffers: UILabel = {
    let ELIVANEVERlabel = UILabel()
    ELIVANEVERlabel.translatesAutoresizingMaskIntoConstraints = false
    ELIVANEVERlabel.font = .systemFont(ofSize: 15, weight: .semibold)
    ELIVANEVERlabel.textColor = .white
    ELIVANEVERlabel.numberOfLines = 2
    return ELIVANEVERlabel
}()

let ELIVANEVERfestivalGuide: UIButton = {
    let ELIVANEVERtton = UIButton(type: .custom)
    ELIVANEVERtton.translatesAutoresizingMaskIntoConstraints = false
    ELIVANEVERtton.setImage(UIImage(named: "ELIVANEVEsleepingBag"), for: .normal)
    return ELIVANEVERtton
}()

let ELIVANEVERseasonalEvents: UILabel = {
    let ELIVANEVERlblb = UILabel()
    ELIVANEVERlblb.translatesAutoresizingMaskIntoConstraints = false
    ELIVANEVERlblb.font = .systemFont(ofSize: 13)
    ELIVANEVERlblb.textColor = UIColor.white.withAlphaComponent(0.8)
    ELIVANEVERlblb.numberOfLines = 2
    return ELIVANEVERlblb
}()

let ELIVANEVERetiquetteTips: UILabel = {
    let ELIVANEVERlbl = UILabel()
    ELIVANEVERlbl.translatesAutoresizingMaskIntoConstraints = false
    ELIVANEVERlbl.font = .systemFont(ofSize: 15)
    ELIVANEVERlbl.textColor = .white
    ELIVANEVERlbl.numberOfLines = 2
    return ELIVANEVERlbl
}()

override init(frame: CGRect) {
    super.init(frame: frame)
    ELIVANEVERsetupView()
    ELIVANEVERcurrencyConverter()
}

required init?(coder: NSCoder) {
    super.init(coder: coder)
    ELIVANEVERsetupView()
    ELIVANEVERcurrencyConverter()
}

private func ELIVANEVERsetupView() {
    contentView.addSubview(ELIVANEVERdiscountCoupons)
    contentView.addSubview(ELIVANEVERuniversalAdapterIcon)
    contentView.addSubview(ELIVANEVElightweighIcon)
    contentView.addSubview(ELIVANEVEtravelGadgetsIcon)
    contentView.addSubview(ELIVANEVERearlyBirdDeals)
    contentView.addSubview(ELIVANEVERlastMinuteOffers)
    contentView.addSubview(ELIVANEVERfestivalGuide)
    contentView.addSubview(ELIVANEVERseasonalEvents)
    contentView.addSubview(ELIVANEVERetiquetteTips)

    NSLayoutConstraint.activate([
        ELIVANEVERdiscountCoupons.topAnchor.constraint(equalTo: contentView.topAnchor),
        ELIVANEVERdiscountCoupons.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
        ELIVANEVERdiscountCoupons.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
        ELIVANEVERdiscountCoupons.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),

        ELIVANEVElightweighIcon.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
        ELIVANEVElightweighIcon.centerYAnchor.constraint(equalTo: contentView.centerYAnchor, constant: -60),
        ELIVANEVElightweighIcon.widthAnchor.constraint(equalToConstant: 72),
        ELIVANEVElightweighIcon.heightAnchor.constraint(equalToConstant: 72),

        ELIVANEVERuniversalAdapterIcon.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
        ELIVANEVERuniversalAdapterIcon.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 155),
        ELIVANEVERuniversalAdapterIcon.widthAnchor.constraint(equalToConstant: 40),
        ELIVANEVERuniversalAdapterIcon.heightAnchor.constraint(equalToConstant: 40),

        ELIVANEVEtravelGadgetsIcon.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
        ELIVANEVEtravelGadgetsIcon.topAnchor.constraint(equalTo: ELIVANEVERuniversalAdapterIcon.bottomAnchor, constant: 18),
        ELIVANEVEtravelGadgetsIcon.widthAnchor.constraint(equalToConstant: 40),
        ELIVANEVEtravelGadgetsIcon.heightAnchor.constraint(equalToConstant: 40),

        ELIVANEVERearlyBirdDeals.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
        ELIVANEVERearlyBirdDeals.widthAnchor.constraint(equalToConstant: 44),
        ELIVANEVERearlyBirdDeals.heightAnchor.constraint(equalToConstant: 44),
        ELIVANEVERearlyBirdDeals.bottomAnchor.constraint(equalTo: ELIVANEVERetiquetteTips.topAnchor, constant: -16),

        ELIVANEVERlastMinuteOffers.topAnchor.constraint(equalTo: ELIVANEVERearlyBirdDeals.topAnchor),
        ELIVANEVERlastMinuteOffers.leadingAnchor.constraint(equalTo: ELIVANEVERearlyBirdDeals.trailingAnchor, constant: 10),

        ELIVANEVERfestivalGuide.centerYAnchor.constraint(equalTo: ELIVANEVERlastMinuteOffers.centerYAnchor),
        ELIVANEVERfestivalGuide.leadingAnchor.constraint(equalTo: ELIVANEVERlastMinuteOffers.trailingAnchor, constant: 15),
        ELIVANEVERfestivalGuide.widthAnchor.constraint(equalToConstant: 23),
        ELIVANEVERfestivalGuide.heightAnchor.constraint(equalToConstant: 22),

        ELIVANEVERseasonalEvents.topAnchor.constraint(equalTo: ELIVANEVERfestivalGuide.bottomAnchor, constant: 2),
        ELIVANEVERseasonalEvents.leadingAnchor.constraint(equalTo: ELIVANEVERlastMinuteOffers.leadingAnchor),

        ELIVANEVERetiquetteTips.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
        ELIVANEVERetiquetteTips.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
        ELIVANEVERetiquetteTips.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -88)
    ])
}

func ELIVANEVERcurrencyConverter() {
    ELIVANEVERearlyBirdDeals.layer.cornerRadius = 22
    ELIVANEVERearlyBirdDeals.layer.masksToBounds = true
}



}
