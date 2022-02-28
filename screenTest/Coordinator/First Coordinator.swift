//
//  MainCoordinator.swift
//  coordinaterPatternTest
//
//  Created by Jann Aleli Zaplan on 2022-02-26.
//

import Foundation
import UIKit

 class FirstCoordnator: Coordinator {
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        
        self.navigationController = navigationController
    }
    
    func start() {
        
        let vc = FirstViewController.instantiate()
        vc.delegate = self
        navigationController.pushViewController(vc, animated: false)
    }

}

extension FirstCoordnator: FirstViewControllerDelegate {
    func navigateToSecondPage() {
        let secondCoordinator = SecondCoordinator(navigationController: navigationController)
        //secondCoordinator.delegate = self
        childCoordinators.append(secondCoordinator)
        secondCoordinator.start()
    }
    
    func navigateToThirdPage() {
        let thirdCoordinator = ThirdCoordinator(navigationController: navigationController)
        //thirdCoordinator.delegate = self
        childCoordinators.append(thirdCoordinator)
        thirdCoordinator.start()
    }
    

}
