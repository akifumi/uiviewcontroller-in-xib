//
//  ViewController.swift
//  XibSample
//
//  Created by akifumi.fukaya on 2018/11/02.
//  Copyright © 2018年 Akifumi Fukaya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        openProfileScene()
    }

    private func openProfileScene() {
        let user = User(
            id: "@akifumifukaya",
            name: "akifumi",
            profileImageUrl: "https://pbs.twimg.com/profile_images/1002817956848459776/JL86jLuC_bigger.jpg",
            description: "2010年4月に株式会社ディー・エヌ・エーに入社し、新規事業のアプリ開発に従事。その後、2018年6月にiOSエンジニアとしてメルペイに入社。アプリ開発が好きで、Android/iOSの両OS共に開発している。"
        )

        let profileViewController = ProfileViewController(user: user)
        let navigationController = UINavigationController(rootViewController: profileViewController)
        UIApplication.shared.open(navigationController)
    }
}
