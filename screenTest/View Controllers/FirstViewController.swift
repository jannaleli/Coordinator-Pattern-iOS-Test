//
//  ViewController.swift
//  screenTest
//
//  Created by Jann Aleli Zaplan on 2022-02-27.
//

import UIKit

public protocol FirstViewControllerDelegate: class {
    func navigateToSecondPage()
    func navigateToThirdPage()
}

 class FirstViewController: UIViewController, Storyboarded {

     weak var delegate: FirstViewControllerDelegate?
 //   @IBOutlet weak var button: UIButton?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("entered viewcontroller view did load")
   
   
    }

    @IBAction func goToSecondPage(_ sender: Any) {
        self.delegate?.navigateToSecondPage()
     
    }
     
     @IBAction func goToThirdPage(_ sender: Any) {
         self.delegate?.navigateToThirdPage()
     }

}

