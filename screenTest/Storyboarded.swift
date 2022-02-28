//
//  Storyboarded.swift
//  coordinaterPatternTest
//
//  Created by Jann Aleli Zaplan on 2022-02-26.
//

import Foundation
import UIKit

protocol Storyboarded {
    static func instantiate () -> Self
}

extension Storyboarded where Self: UIViewController {
    static func instantiate() -> Self {
        let fullName = String(describing: self)

               // load our storyboard
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)

               // instantiate a view controller with that identifier, and force cast as the type that was requested
        return storyboard.instantiateViewController(withIdentifier: fullName) as! Self
    }
    
}
