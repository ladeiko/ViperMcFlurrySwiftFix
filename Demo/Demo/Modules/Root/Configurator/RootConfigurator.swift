//
//  RootConfigurator.swift
//  Demo
//
//  Created by Siarhei Ladzeika.
//  Copyright © 2017 Siarhei Ladzeika. All rights reserved.
//

import UIKit

class RootModuleConfigurator {

    func build() -> UIViewController {
        let storyboard = UIStoryboard.init(name: "Root", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "Root")
        configureModuleForViewInput(viewInput: viewController)
        return viewController
    }
    
    func configureModuleForViewInput<UIViewController>(viewInput: UIViewController) {

        if let viewController = viewInput as? RootViewController {
            configure(viewController: viewController)
        }
    }

    private func configure(viewController: RootViewController) {

        let router = RootRouter()

        let presenter = RootPresenter()
        presenter.view = viewController
        presenter.router = router

        let interactor = RootInteractor()
        interactor.output = presenter

        presenter.interactor = interactor
        viewController.output = presenter
        
        router.transitionHandler = viewController
    }

}
