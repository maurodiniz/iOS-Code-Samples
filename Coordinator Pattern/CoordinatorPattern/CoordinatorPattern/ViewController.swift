//
//  ViewController.swift
//  CoordinatorPattern
//
//  Created by Mauro Augusto Diniz on 13/07/20.
//  Copyright © 2020 Mauro Augusto Diniz. All rights reserved.
//

import UIKit

class ViewController: UIViewController, Storyboarded {
    weak var coordinator: MainCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func didTapGoToBuyScreen(_ sender: Any) {
        coordinator?.buyScreen()
    }
    
    @IBAction func didTapGoToCreateAccountScreen(_ sender: Any) {
        coordinator?.createAccountScreen()
    }
}

