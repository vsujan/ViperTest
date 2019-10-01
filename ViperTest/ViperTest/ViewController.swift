//
//  ViewController.swift
//  ViperTest
//
//  Created by Sujan Vaidya on 10/1/19.
//  Copyright © 2019 Sujan Vaidya. All rights reserved.
//

import UIKit

protocol PresenterRoutingProtocol {
    func openScreen(screenName: String, onViewController: UIViewController)
}

class ViewController: UIViewController, PresenterProtocol {

    @IBOutlet weak var lbl: UILabel!
    
    var presenter: Presenter?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        presenter?.getDataFromInteractor()
    }

    func didFinishGettingDataFromPresenter(data: String) {
        lbl.text = data
    }

    @IBAction func tappedDetailButton(_ sender: UIButton) {
        presenter?.openScreen(screenName: "DetailViewController", onViewController: self)
    }
    
}

