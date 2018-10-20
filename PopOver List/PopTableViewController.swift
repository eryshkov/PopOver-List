//
//  PopTableViewController.swift
//  PopOver List
//
//  Created by Evgeniy Ryshkov on 20/10/2018.
//  Copyright © 2018 Evgeniy Ryshkov. All rights reserved.
//

import UIKit

class PopTableViewController: UITableViewController {

    let array = ["This is row 1",
                 "This is row 2",
                 "This is row 3",
                 "This is row 4",
                 "This is row 5",
                 ]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.isScrollEnabled = false
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        preferredContentSize = CGSize(width: 250, height: tableView.contentSize.height)
    }
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return array.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        let data = array[indexPath.row]
        cell.textLabel?.text = data
        
        return cell
    }

}
