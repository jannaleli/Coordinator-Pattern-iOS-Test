//
//  TableViewController.swift
//  coordsPractice
//
//  Created by Jann Zaplan on 2022-02-25.
//

import Foundation
import UIKit


class TableViewController: UIViewController, Storyboarded {

    weak var coordinator: MainCoordinator?
    @IBOutlet weak var table: UITableView?
    var sampleData = ["Eenie", "Mini", "Mo"]
    var dataSource: TableDataSource?
    var delegate: TableViewDelegate?
    
    
    override func viewDidLoad() {
        print("viewDidLoad")
   
        dataSource = TableDataSource(dataSrc: self.sampleData)

        
        self.table?.delegate = delegate
        self.table?.dataSource = dataSource
        
        self.table?.register(UITableViewCell.classForKeyedArchiver(), forCellReuseIdentifier: "Cell")
    }
}
