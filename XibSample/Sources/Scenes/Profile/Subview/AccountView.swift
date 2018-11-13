//
//  AccountView.swift
//  XibSample
//
//  Created by akifumi.fukaya on 2018/11/12.
//  Copyright © 2018年 Akifumi Fukaya. All rights reserved.
//

import UIKit

@IBDesignable
final class AccountView: NibLoadableView {
    @IBOutlet private weak var iconImageView: UIImageView! {
        didSet {
            iconImageView.layer.borderWidth = 1.0 / UIScreen.main.scale
            iconImageView.layer.borderColor = UIColor.lightGray.cgColor
            iconImageView.layer.cornerRadius = 4
            iconImageView.layer.masksToBounds = true
        }
    }
    @IBOutlet private weak var nameLabel: UILabel!
    @IBOutlet private weak var accountIdLabel: UILabel!

    struct Input {
        let iconImageURL: URL?
        let name: String
        let accountId: String
    }

    func configure(input: Input) {
        if let url = input.iconImageURL {
            iconImageView.set(with: url)
        } else {
            iconImageView.image = nil
        }
        nameLabel.text = input.name
        accountIdLabel.text = input.accountId
    }
}
