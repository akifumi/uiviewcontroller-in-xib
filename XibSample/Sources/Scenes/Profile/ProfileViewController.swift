//
//  ProfileViewController.swift
//  XibSample
//
//  Created by akifumi.fukaya on 2018/11/02.
//  Copyright © 2018年 Akifumi Fukaya. All rights reserved.
//

import UIKit

final class ProfileViewController: UIViewController {

    var user: User!

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
    @IBOutlet private weak var descriptionLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Profile"

        if let url = URL(string: user.profileImageUrl) {
            iconImageView.set(with: url)
        } else {
            iconImageView.image = nil
        }
        nameLabel.text = user.name
        accountIdLabel.text = user.id
        descriptionLabel.text = user.description
    }
}
