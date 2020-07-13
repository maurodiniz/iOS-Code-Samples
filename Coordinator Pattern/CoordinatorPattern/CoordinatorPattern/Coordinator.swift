//
//  Coordinator.swift
//  CoordinatorPattern
//
//  Created by Mauro Augusto Diniz on 13/07/20.
//  Copyright © 2020 Mauro Augusto Diniz. All rights reserved.
//

import Foundation
import UIKit

protocol Coordinator {
    var childCoordinators: [Coordinator] {get set}
    var navigationController: UINavigationController {get set}
    
    func start()
}
