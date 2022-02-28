//
//  Second Coordinator.swift
//  screenTest
//
//  Created by Jann Zaplan on 2022-02-28.
//

import Foundation
import UIKit
protocol BackToFirstViewControllerDelegate: class {
    
    func navigateBackToFirstPage(newOrderCoordinator: Any)
    
}
class SecondCoordinator: Coordinator {
   var childCoordinators = [Coordinator]()
   var navigationController: UINavigationController
   weak var delegate: BackToFirstViewControllerDelegate? //To keep track of parent coordinator?
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
        thirdCoordinator.secondDelegate = self
        childCoordinators.append(thirdCoordinator)
        thirdCoordinator.start()
    }
    
    func navigateToFirstPage() {
        self.delegate?.navigateBackToFirstPage(newOrderCoordinator: self)
    }
    

}


extension SecondCoordinator: BackToSecondViewControllerDelegate {

    func navigateBackToSecondPage(newOrderCoordinator: Any) {
        navigationController.popToRootViewController(animated: true)
        childCoordinators.removeLast()
    }

}

