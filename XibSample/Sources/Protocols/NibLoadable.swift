//
//  NibLoadable.swift
//  XibSample
//
//  Created by akifumi.fukaya on 2018/11/12.
//  Copyright © 2018年 Akifumi Fukaya. All rights reserved.
//

import UIKit

protocol NibLoadable {}

extension NibLoadable where Self: UIView {

    var nibName: String {
        return String(describing: type(of: self))
    }

    var bundle: Bundle {
        return Bundle(for: type(of: self))
    }

    var nib: UINib {
        return UINib(nibName: nibName, bundle: bundle)
    }

    func instantiate() -> UIView {
        guard let view = nib.instantiate(withOwner: self, options: nil).first as? UIView else {
            fatalError("Could not load view from nib")
        }
        return view
    }
}

extension UIView: NibLoadable {}
