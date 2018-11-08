//
//  UIApplication+Extensions.swift
//  XibSample
//
//  Created by akifumi.fukaya on 2018/11/08.
//  Copyright © 2018年 Akifumi Fukaya. All rights reserved.
//

import UIKit

extension UIApplication {

    var appDelegate: AppDelegate? {
        return delegate as? AppDelegate
    }

    func open(_ viewController: UIViewController) {
        appDelegate?.window?.rootViewController = viewController
    }
}
