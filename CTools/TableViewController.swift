//
//  TableViewController.swift
//  CTools
//
//  Created by Ameya Khare on 3/14/15.
//  Copyright (c) 2015 ameyakhare. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController, UINavigationControllerDelegate {
    var classes = ClassItemManager()
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return classes.classList.count
    }
    
    override func viewDidLoad () {
        self.navigationController?.navigationBar.translucent = false
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("ListViewCell", forIndexPath: indexPath) as UITableViewCell
        let classItem = classes.classList[indexPath.row]
        cell.textLabel!.text = classItem.name
        return cell
    }
}
