//
//  ViewController.swift
//  ADDeviceTool
//
//  Created by andehang on 2017/10/31.
//  Copyright © 2017年 andehang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let deviceType = ADDeviceTool.getDevieceType()
        print(deviceType)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

