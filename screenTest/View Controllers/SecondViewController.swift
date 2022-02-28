//
//  TableViewController.swift
//  coordsPractice
//
//  Created by Jann Zaplan on 2022-02-25.
//

import Foundation
import UIKit

public protocol SecondViewControllerDelegate: class {
    func navigateToFirstPage()
    func navigateToThirdPage()
}

class SecondViewController: UIViewController, Storyboarded {

    public weak var delegate: SecondViewControllerDelegate?
    @IBOutlet weak var table: UITableView?
    var sampleData = ["Eenie", "Mini", "Mo"]
    var tableDataSource: TableDataSource?
    var tableDelegate: TableViewDelegate?
    
    
    override func viewDidLoad() {
        print("viewDidLoad")
   
        tableDataSource = TableDataSource(dataSrc: self.sampleData)
        tableDelegate = TableViewDelegate()
        
        self.table?.delegate = tableDelegate
        self.table?.dataSource = tableDataSource
        
        self.table?.register(UITableViewCell.classForKeyedArchiver(), forCellReuseIdentifier: "Cell")
    }
    
    @IBAction func navigateToFirstPage(_ sender: Any) {
        self.delegate?.navigateToFirstPage()
     
    }
     
     @IBAction func navigateToThirdPage(_ sender: Any) {
         self.delegate?.navigateToThirdPage()
     }
}
