//
//  ViewController.swift
//  CollectionTableViewSample
//
//  Created by 城島一輝 on 2020/09/08.
//  Copyright © 2020 城島一輝. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    private let tableViewDataSouce = TableViewDataSouce()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableViewDataSouce.configure(tableView)
    }
}

