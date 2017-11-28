//
//  RoundButton.swift
//  AnnotateImage
//
//  Created by David Lari on 11/21/17.
//  Copyright © 2017 David Lari. All rights reserved.
//
import UIKit

class RoundButton: UIButton {

    var shadowLayer: CAShapeLayer!

    override func layoutSubviews() {
        super.layoutSubviews()

        imageView?.layer.cornerRadius = self.layer.cornerRadius
        layer.cornerRadius = 25
        layer.borderWidth = 1

        if shadowLayer == nil {
            shadowLayer = CAShapeLayer()
            shadowLayer.path = UIBezierPath(roundedRect: bounds, cornerRadius: self.layer.cornerRadius).cgPath
            shadowLayer.fillColor = UIColor.white.cgColor

            shadowLayer.shadowColor = UIColor.darkGray.cgColor
            shadowLayer.shadowPath = shadowLayer.path
            shadowLayer.shadowOffset = CGSize(width: 2.0, height: 2.0)
            shadowLayer.shadowOpacity = 0.8
            shadowLayer.shadowRadius = 2

            layer.insertSublayer(shadowLayer, at: 0)
        }
    }

}
