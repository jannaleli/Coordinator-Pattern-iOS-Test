//
//  MainCoordinator.swift
//  coordinaterPatternTest
//
//  Created by Jann Aleli Zaplan on 2022-02-26.
//

import Foundation
import UIKit

public protocol Coordinator : class {

    var childCoordinators: [Coordinator] { get set }

    // All coordinators will be initilised with a navigation controller
    var navigationController: UINavigationController { get set }

    func start()
}
