//
//  BorderButton.swift
//  app-swoosh
//
//  Created by Marcel Duarte on 8/5/17.
//  Copyright © 2017 Marcel Duarte. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 2.0
        layer.borderColor = UIColor.white.cgColor
    }

}
