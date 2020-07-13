//
//  MainCoordinator.swift
//  CoordinatorPattern
//
//  Created by Mauro Augusto Diniz on 13/07/20.
//  Copyright © 2020 Mauro Augusto Diniz. All rights reserved.
//

import Foundation
import UIKit

class MainCoordinator: Coordinator {
    
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let viewController = ViewController.instantiate()
        viewController.coordinator = self
        
        navigationController.pushViewController(viewController, animated: false)
    }
    
    func buyScreen() {
        let vc = BuyViewController.instantiate()
        vc.coordinator = self
        
        navigationController.pushViewController(vc, animated: true)
    }
    
    func createAccountScreen() {
        let vc = CreateAccountViewController.instantiate()
        vc.coordinator = self
        
        navigationController.pushViewController(vc, animated: true)
    }
}
