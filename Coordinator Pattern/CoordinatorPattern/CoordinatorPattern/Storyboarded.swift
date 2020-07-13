//
//  Storyboarded.swift
//  CoordinatorPattern
//
//  Created by Mauro Augusto Diniz on 13/07/20.
//  Copyright © 2020 Mauro Augusto Diniz. All rights reserved.
//

import Foundation
import UIKit

protocol Storyboarded {
    static func instantiate() -> Self
}

extension Storyboarded where Self: UIViewController {
    // Static Methods:
    static func instantiate() -> Self {
        
        // this pulls out "MyApp.MyViewController"
        let fullName = NSStringFromClass(self)
        
        // this splits by the dot and uses everything after, giving "MyViewController"
        let className = fullName.components(separatedBy: ".")[1]
        
        // load our storyboard
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        
        // instantiate a view controller with that identifier, and force cast as the type that was requested
        return storyboard.instantiateViewController(identifier: className) as! Self
    }
}
