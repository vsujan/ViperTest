//
//  Interactor.swift
//  ViperTest
//
//  Created by Sujan Vaidya on 10/1/19.
//  Copyright © 2019 Sujan Vaidya. All rights reserved.
//

import Foundation

protocol InteractorBusinessLogic {
    func getDataFromExternalSources()
}

protocol InteractorProtocol {
    func didFinishGettingDataFromInteractor(data: String)
}

class Interactor: InteractorBusinessLogic {
    
    var interactorDelegate: InteractorProtocol?
    
    func getDataFromExternalSources() {
        let someData = "NEw Test data"
        let serverData = ServerData()
        serverData.someData = someData
        
        interactorDelegate?.didFinishGettingDataFromInteractor(data: serverData.someData!)
    }
    
}
