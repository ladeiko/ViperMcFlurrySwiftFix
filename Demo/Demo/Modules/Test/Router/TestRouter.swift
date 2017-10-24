//
//  TestRouter.swift
//  Demo
//
//  Created by Siarhei Ladzeika.
//  Copyright © 2017 Siarhei Ladzeika. All rights reserved.
//
import ViperMcFlurry

class TestRouter: TestRouterInput {
    weak var transitionHandler: RamblerViperModuleTransitionHandlerProtocol!
    
    func dismiss() {
        transitionHandler.closeCurrentModule!(true)
    }
}
