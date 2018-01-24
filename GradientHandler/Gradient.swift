//
//  Gradient.swift
//  GradientHandler
//
//  Created by Shane Nelson on 1/23/18.
//  Copyright © 2018 Shane Nelson. All rights reserved.
//

import Foundation
import UIKit

struct GradientApplier
{
  static func apply(to view: UIView)
  {
    let gradientLayer = CAGradientLayer()
    gradientLayer.frame = view.frame
    //gradientLayer.colors = [sunset1.cgColor, sunset2.cgColor]
    gradientLayer.colors = [honeydew1.cgColor, honeydew2.cgColor]
    gradientLayer.locations = [0.0, 1.3]
    gradientLayer.startPoint = CGPoint(x: 0.5, y: 0.0)
    view.layer.insertSublayer(gradientLayer, at: 0)
  }
}

