//
//  ThirdViewController.swift
//  screenTest
//
//  Created by Jann Zaplan on 2022-02-28.
//

import Foundation
import UIKit
public protocol ThirdViewControllerDelegate: class {
    func navigateToFirstPage()
    func navigateToSecondPage()
}
class ThirdViewController: UIViewController, Storyboarded {
    public weak var delegate: ThirdViewControllerDelegate?
    override func viewDidLoad() {
         
    }
    @IBAction func navigateToSecondPage(_ sender: Any) {
        self.delegate?.navigateToSecondPage()
     
    }
     
     @IBAction func navigateToFirstPage(_ sender: Any) {
         self.delegate?.navigateToFirstPage()
     }
}
