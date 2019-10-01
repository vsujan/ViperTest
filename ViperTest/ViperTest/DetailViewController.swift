//
//  DetailViewController.swift
//  ViperTest
//
//  Created by Sujan Vaidya on 10/1/19.
//  Copyright © 2019 Sujan Vaidya. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setUpTableView()
    }
    
    func setUpTableView() {
        detailTableView.dataSource = self
        detailTableView.delegate = self
    }
    
    @IBAction func tappedCloseBtn(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }

}

extension DetailViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell") else { return UITableViewCell() }
        cell.textLabel?.text = "test"
        
        return cell
    }
}
