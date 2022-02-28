//
//  Third Coordinator.swift
//  screenTest
//
//  Created by Jann Zaplan on 2022-02-28.
//

import Foundation
import UIKit

class ThirdCoordinator: Coordinator {
   var childCoordinators = [Coordinator]()
   var navigationController: UINavigationController
   
   init(navigationController: UINavigationController) {
       print("init")
       self.navigationController = navigationController
   }
   
   func start() {
       print("starting")
       let vc = ThirdViewController.instantiate()
       vc.delegate = self
       navigationController.pushViewController(vc, animated: false)
   }

    
}
extension ThirdCoordinator: ThirdViewControllerDelegate {
    func navigateToFirstPage() {
        let firstCoordinator = FirstCoordnator(navigationController: navigationController)
        //firstCoordinator.delegate = self
        childCoordinators.append(firstCoordinator)
        firstCoordinator.start()
    }
    
    func navigateToSecondPage() {
        let secondCoordinator = SecondCoordinator(navigationController: navigationController)
        //secondCoordinator.delegate = self
        childCoordinators.append(secondCoordinator)
        secondCoordinator.start()
    }
    

}
