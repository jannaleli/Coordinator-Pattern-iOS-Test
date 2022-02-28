//
//  Third Coordinator.swift
//  screenTest
//
//  Created by Jann Zaplan on 2022-02-28.
//

import Foundation
import UIKit
protocol BackToSecondViewControllerDelegate: class {
    
    func navigateBackToSecondPage(newOrderCoordinator: Any)
    
}
class ThirdCoordinator: Coordinator {
   var childCoordinators = [Coordinator]()
   var navigationController: UINavigationController
    weak var secondDelegate: BackToSecondViewControllerDelegate? //To keep track of parent coordinator?
    weak var firstDelegate: BackToFirstViewControllerDelegate?
   init(navigationController: UINavigationController) {
      
       self.navigationController = navigationController
   }
   
   func start() {
   
       let vc = ThirdViewController.instantiate()
       vc.delegate = self
       navigationController.pushViewController(vc, animated: false)
   }

    
}

extension ThirdCoordinator: ThirdViewControllerDelegate {
    func navigateToFirstPage() {
        self.firstDelegate?.navigateBackToFirstPage(newOrderCoordinator: navigationController)
    }
    
    func navigateToSecondPage() {
        self.secondDelegate?.navigateBackToSecondPage(newOrderCoordinator: navigationController)
    }
}


