//
//  RootPresenter.swift
//  Demo
//
//  Created by Siarhei Ladzeika.
//  Copyright © 2017 Siarhei Ladzeika. All rights reserved.
//

class RootPresenter: RootModuleInput, RootViewOutput, RootInteractorOutput {

    weak var view: RootViewInput!
    var interactor: RootInteractorInput!
    var router: RootRouterInput!

    func viewIsReady() {

    }
    
    func didClickShowTest() {
        router.showTest()
    }
}
