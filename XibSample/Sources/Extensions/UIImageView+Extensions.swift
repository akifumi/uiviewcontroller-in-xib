//
//  UIImageView+Extensions.swift
//  XibSample
//
//  Created by akifumi.fukaya on 2018/11/08.
//  Copyright © 2018年 Akifumi Fukaya. All rights reserved.
//

import UIKit

extension UIImageView {

    func set(with url: URL) {
        URLSession.shared
            .dataTask(with: url) { (data, _, error) in
                guard let data = data, let image = UIImage(data: data) else { return }
                DispatchQueue.main.async { [weak self] in
                    self?.image = image
                }
            }
            .resume()
    }
}
