//
//  RootViewController.swift
//  Demo
//
//  Created by Siarhei Ladzeika.
//  Copyright © 2017 Siarhei Ladzeika. All rights reserved.
//

import UIKit

class RootViewController: UIViewController, RootViewInput {

    var output: RootViewOutput!

    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        output.viewIsReady()
    }


    // MARK: RootViewInput
    func setupInitialState() {
    }
    
    @IBAction func showTestClicked() {
        output.didClickShowTest()
    }
}
