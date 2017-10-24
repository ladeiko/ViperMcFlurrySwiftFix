//
//  TestPresenter.swift
//  Demo
//
//  Created by Siarhei Ladzeika.
//  Copyright © 2017 Siarhei Ladzeika. All rights reserved.
//

class TestPresenter: TestModuleInput, TestViewOutput, TestInteractorOutput {

    weak var view: TestViewInput!
    var interactor: TestInteractorInput!
    var router: TestRouterInput!

    func viewIsReady() {

    }
    
    func didClickDismiss() {
        router.dismiss()
    }
    
    func configure() {
        print("TestPresenter Configured")
    }
}
