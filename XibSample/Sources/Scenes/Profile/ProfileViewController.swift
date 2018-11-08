//
//  ProfileViewController.swift
//  XibSample
//
//  Created by akifumi.fukaya on 2018/11/02.
//  Copyright © 2018年 Akifumi Fukaya. All rights reserved.
//

import UIKit

final class ProfileViewController: UIViewController {

    private let user: User

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

    init(user: User) {
        self.user = user
        super.init(nibName: nil, bundle: Bundle(for: type(of: self)))
    }

    @available(*, unavailable)
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

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
