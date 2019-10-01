//
//  Presenter.swift
//  ViperTest
//
//  Created by Sujan Vaidya on 10/1/19.
//  Copyright © 2019 Sujan Vaidya. All rights reserved.
//

import UIKit

protocol PresentationLogic {
    func getDataFromInteractor()
}

protocol PresenterProtocol {
    func didFinishGettingDataFromPresenter(data: String)
}

class Presenter: PresentationLogic, InteractorProtocol, PresenterRoutingProtocol {
    
    var interactor: Interactor?
    var presenterDelegate: PresenterProtocol?
    var router: Router?
    
    func getDataFromInteractor() {
        interactor?.getDataFromExternalSources()
    }
    
    func didFinishGettingDataFromInteractor(data: String) {
        presenterDelegate?.didFinishGettingDataFromPresenter(data: data)
    }
    
    func openScreen(screenName: String, onViewController: UIViewController) {
        router?.openScreen(screenName: screenName, onViewController: onViewController)
    }
    
}
