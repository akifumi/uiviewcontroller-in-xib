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

    @IBOutlet private weak var accountView: AccountView!
    @IBOutlet private weak var accountDescriptionView: AccountDescriptionView!

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

        title = "Profile"

        accountView.configure(
            input: AccountView.Input(
                iconImageURL: URL(string: user.profileImageUrl),
                name: user.name,
                accountId: user.id
            )
        )
        accountDescriptionView.configure(
            input: AccountDescriptionView.Input(
                description: user.description
            )
        )
    }
}
