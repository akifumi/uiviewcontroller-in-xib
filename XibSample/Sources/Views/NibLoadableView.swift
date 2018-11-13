//
//  NibLoadableView.swift
//  XibSample
//
//  Created by akifumi.fukaya on 2018/11/12.
//  Copyright © 2018年 Akifumi Fukaya. All rights reserved.
//

import UIKit

class NibLoadableView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        instantiateNibView()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        instantiateNibView()
    }

    private func instantiateNibView() {
        let view = instantiate()
        addSubview(view)

        view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate(
            [
                view.topAnchor.constraint(equalTo: topAnchor),
                view.leftAnchor.constraint(equalTo: leftAnchor),
                view.rightAnchor.constraint(equalTo: rightAnchor),
                view.bottomAnchor.constraint(equalTo: bottomAnchor)
            ]
        )
    }
}
