//
//  AccountDescriptionView.swift
//  XibSample
//
//  Created by akifumi.fukaya on 2018/11/13.
//  Copyright © 2018年 Akifumi Fukaya. All rights reserved.
//

import UIKit

@IBDesignable
final class AccountDescriptionView: NibLoadableView {
    @IBOutlet private weak var descriptionLabel: UILabel!

    @IBInspectable private var text: String? {
        get { return descriptionLabel.text }
        set { descriptionLabel.text = newValue }
    }

    struct Input {
        let description: String
    }

    func configure(input: Input) {
        descriptionLabel.text = input.description
    }
}
