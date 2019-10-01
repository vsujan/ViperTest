//
//  Router.swift
//  ViperTest
//
//  Created by Sujan Vaidya on 10/1/19.
//  Copyright © 2019 Sujan Vaidya. All rights reserved.
//

import UIKit

protocol RoutingProtocol {
    func openScreen(screenName: String, onViewController: UIViewController)
}

class Router: RoutingProtocol {
    
    class func getRootScreen() -> UIViewController {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        let presenter = setUpPresenter(forVC: vc)
        setUpInteractor(forPresenter: presenter)
        
        vc.presenter = presenter
        
        return vc
    }
    
    private class func setUpPresenter(forVC vc: ViewController) -> Presenter {
        let presenter = Presenter()
        presenter.presenterDelegate = vc
        presenter.router = Router()
        
        return presenter
    }
    
    private class func setUpInteractor(forPresenter presenter: Presenter) {
        let interactor = Interactor()
        interactor.interactorDelegate = presenter
        
        presenter.interactor = interactor
    }
    
    func openScreen(screenName: String, onViewController: UIViewController) {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: "DetailViewController")
        
        onViewController.present(vc, animated: true, completion: nil)
    }
    
}
