//
//  Second Coordinator.swift
//  screenTest
//
//  Created by Jann Zaplan on 2022-02-28.
//

import Foundation
import UIKit

class SecondCoordinator: Coordinator {
   var childCoordinators = [Coordinator]()
   var navigationController: UINavigationController
   
   init(navigationController: UINavigationController) {
       print("init")
       self.navigationController = navigationController
   }
   
   func start() {
       print("starting")
       let vc = SecondViewController.instantiate()
       vc.delegate = self

       navigationController.pushViewController(vc, animated: false)
   }

    
}

extension SecondCoordinator: SecondViewControllerDelegate {
    func navigateToThirdPage() {
        let thirdCoordinator = ThirdCoordinator(navigationController: navigationController)
        //secondCoordinator.delegate = self
        childCoordinators.append(thirdCoordinator)
        thirdCoordinator.start()
    }
    
    func navigateToFirstPage() {
        let firstCoordinator = FirstCoordnator(navigationController: navigationController)
        //secondCoordinator.delegate = self
        childCoordinators.append(firstCoordinator)
        firstCoordinator.start()
    }
    

}

