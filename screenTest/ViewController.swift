//
//  ViewController.swift
//  screenTest
//
//  Created by Jann Aleli Zaplan on 2022-02-27.
//

import UIKit

final class ViewController: UIViewController, Storyboarded {
    weak var coordinator: MainCoordinator?
 //   @IBOutlet weak var button: UIButton?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("entered viewcontroller view did load")
   
   
    }

    @IBAction func goToSecondPage(_ sender: Any) {
        print("go to second page")
        print(coordinator)
        coordinator?.secondView()
    }

}

