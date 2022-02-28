//
//  TableViewDelegate.swift
//  coordsPractice
//
//  Created by Jann Zaplan on 2022-02-25.
//

import UIKit

class TableViewDelegate: NSObject, UITableViewDelegate {

    var data: [String]?
    
    init(dataSrc: [String]) {
        data = dataSrc
    }
    func tableView(_: UITableView, willDisplay: UITableViewCell, forRowAt: IndexPath){
        
        
    }
    func tableView(_: UITableView, indentationLevelForRowAt: IndexPath) -> Int
    {
        return 1
    }
    
    func tableView(_: UITableView, shouldSpringLoadRowAt: IndexPath, with: UISpringLoadedInteractionContext) -> Bool {
        return true
    }
    
}
