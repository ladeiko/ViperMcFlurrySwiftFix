//
//  RootInitializer.swift
//  Demo
//
//  Created by Siarhei Ladzeika.
//  Copyright © 2017 Siarhei Ladzeika. All rights reserved.
//

import UIKit

class RootModuleInitializer: NSObject {

    //Connect with object on storyboard
    @IBOutlet weak var rootViewController: RootViewController!

    override func awakeFromNib() {

        let configurator = RootModuleConfigurator()
        configurator.configureModuleForViewInput(viewInput: rootViewController)
    }

}
