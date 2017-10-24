//
//  TestInitializer.swift
//  Demo
//
//  Created by Siarhei Ladzeika.
//  Copyright © 2017 Siarhei Ladzeika. All rights reserved.
//

import UIKit

class TestModuleInitializer: NSObject {

    //Connect with object on storyboard
    @IBOutlet weak var testViewController: TestViewController!

    override func awakeFromNib() {

        let configurator = TestModuleConfigurator()
        configurator.configureModuleForViewInput(viewInput: testViewController)
    }

}
