//
//  RootRouter.swift
//  Demo
//
//  Created by Siarhei Ladzeika.
//  Copyright © 2017 Siarhei Ladzeika. All rights reserved.
//
import ViperMcFlurry

class RootRouter: RootRouterInput {
    
    weak var transitionHandler: RamblerViperModuleTransitionHandlerProtocol!

    func showTest() {
        transitionHandler.openModule!(usingFactory: TestModuleConfigurator()) { (sourceModuleTransitionHandler, destinationModuleTransitionHandler) in
            
            let sourceViewController = sourceModuleTransitionHandler as! UIViewController
            let destinationViewController = destinationModuleTransitionHandler as! UIViewController
            
            sourceViewController.present(destinationViewController, animated: true, completion: nil)
            
            }.thenChain { (moduleInput) -> RamblerViperModuleOutput? in
                // This code without ViperMcFlurrySwiftFix will crash, because
                // moduleInput will check only Obj-C version of property and returns nil.
                // The fix checks both Obj-C and Swift properties.
                (moduleInput as! TestModuleInput).configure()
                return nil
        }
    }
    
}
