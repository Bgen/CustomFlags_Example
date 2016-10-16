//
//  ViewController.swift
//  CustomFlags_Example
//
//  Created by Burcu Geneci on 09/10/16.
//  Copyright © 2016 Burcu Geneci. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        AppEnvironment.baseAPIURL()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

