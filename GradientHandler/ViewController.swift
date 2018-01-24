//
//  ViewController.swift
//  GradientHandler
//
//  Created by Shane Nelson on 1/23/18.
//  Copyright © 2018 Shane Nelson. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
  
  override func viewDidLoad()
  {
    super.viewDidLoad()
    
    GradientApplier.apply(to: view)
    
  }

  override func didReceiveMemoryWarning()
  {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

