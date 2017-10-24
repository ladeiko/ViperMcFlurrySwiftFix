//
//  TestConfigurator.swift
//  Demo
//
//  Created by Siarhei Ladzeika.
//  Copyright © 2017 Siarhei Ladzeika. All rights reserved.
//

import UIKit
import ViperMcFlurry

class TestModuleConfigurator: NSObject, RamblerViperModuleFactoryProtocol {

    func build() -> UIViewController {
        let storyboard = UIStoryboard.init(name: "Test", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "Test")
        configureModuleForViewInput(viewInput: viewController)
        return viewController
    }
    
    func configureModuleForViewInput<UIViewController>(viewInput: UIViewController) {

        if let viewController = viewInput as? TestViewController {
            configure(viewController: viewController)
        }
    }

    private func configure(viewController: TestViewController) {

        let router = TestRouter()

        let presenter = TestPresenter()
        presenter.view = viewController
        presenter.router = router

        let interactor = TestInteractor()
        interactor.output = presenter

        presenter.interactor = interactor
        viewController.output = presenter
        
        router.transitionHandler = viewController
    }

    // MARK: - RamblerViperModuleFactoryProtocol
    
    func instantiateModuleTransitionHandler() -> RamblerViperModuleTransitionHandlerProtocol? {
        return build()
    }
}
