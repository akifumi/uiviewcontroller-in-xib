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
    @IBOutlet private weak var iconImageView: UIImageView!
    @IBOutlet private weak var nameLabel: UILabel!
    @IBOutlet private weak var accountIdLabel: UILabel!

    @IBInspectable private var iconBorderWidth: CGFloat {
        get { return iconImageView.layer.borderWidth }
        set { iconImageView.layer.borderWidth = newValue }
    }

    @IBInspectable private var iconBorderColor: UIColor? {
        get { return iconImageView.layer.borderColor.map { UIColor(cgColor: $0) } }
        set { iconImageView.layer.borderColor = newValue?.cgColor }
    }

    @IBInspectable private var iconCornerRadius: CGFloat {
        get { return iconImageView.layer.cornerRadius }
        set {
            iconImageView.layer.cornerRadius = newValue
            iconImageView.layer.masksToBounds = newValue > 0
        }
    }

    @IBInspectable private var name: String? {
        get { return nameLabel.text }
        set { nameLabel.text = newValue }
    }

    @IBInspectable private var accountId: String? {
        get { return accountIdLabel.text }
        set { accountIdLabel.text = newValue }
    }

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
