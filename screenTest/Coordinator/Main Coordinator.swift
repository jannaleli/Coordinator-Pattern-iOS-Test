//
//  MainCoordinator.swift
//  coordinaterPatternTest
//
//  Created by Jann Aleli Zaplan on 2022-02-26.
//

import Foundation
import UIKit

 class MainCoordinator: Coordinator {
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        print("init")
        self.navigationController = navigationController
    }
    
    func start() {
        print("starting")
        let vc = ViewController.instantiate()
        vc.coordinator = self

        navigationController.pushViewController(vc, animated: false)
    }
    func secondView() {
        print("Going to another view")
        let vc = TableViewController.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
}
