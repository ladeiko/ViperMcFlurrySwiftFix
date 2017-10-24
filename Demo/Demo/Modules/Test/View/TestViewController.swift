//
//  TestViewController.swift
//  Demo
//
//  Created by Siarhei Ladzeika.
//  Copyright © 2017 Siarhei Ladzeika. All rights reserved.
//

import UIKit

class TestViewController: UIViewController, TestViewInput {

    var output: TestViewOutput!

    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        output.viewIsReady()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("TestViewController viewDidAppear")
    }


    // MARK: TestViewInput
    func setupInitialState() {
    }
    
    @IBAction
    func didClickDismiss() {
        output.didClickDismiss()
    }
}
