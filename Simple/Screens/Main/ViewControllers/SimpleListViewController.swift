//
//  SimpleListViewController.swift
//  Simple
//
//  Created by Jennifer Nordwall on 18/03/2016.
//  Copyright © 2016 Jennifer Nordwall. All rights reserved.
//

import UIKit

class SimpleListViewController: UITableViewController {
    
    // IBOutlet will make them exposed in the interface builder. 
    // Make sure that they are 'weak' since we should not be resposible for them
    @IBOutlet weak var headerViewTitleLabel: UILabel!
    
    // Use the MARK keyword to make nice separatins in the code in the top right dropdown menu
    // MARK: - View Lifecycle
    
    // this is where you should instanciate font styles and colors
    // things that only will be updated once
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Simple list"
        
        self.headerViewTitleLabel.text = "Something cool"
        
        // this will register your homemade cell for the tableview to pick up later in "cellForRow"
        self.tableView.registerNib(UINib(nibName: SimpleListTableViewCell.nibName(), bundle: nil),
            forCellReuseIdentifier: SimpleListTableViewCell.reuseIdentifier())
    }
    
    // This will be called every time just before this view will appear
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated);
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if (segue.identifier == "ShowListItem") {
            
            if let viewController = segue.destinationViewController as? SimpleItemViewController {
                
                if let cell = sender as? SimpleListTableViewCell {
                    viewController.coolTitle = cell.title

                } else {
                    viewController.coolTitle = "Nothing"
                }
            }
        }
    }
    
    // MARK: - UITableViewDataSource
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCellWithIdentifier(SimpleListTableViewCell.reuseIdentifier()) as? SimpleListTableViewCell {
            
            cell.title = "Some cool string" +  "\(indexPath.row)"
    
            return cell
        }
        
        return UITableViewCell() // never return nil from this method!
    }
    
    // MARK: - UITableViewDelegate

    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return SimpleListTableViewCell.height()
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        self.performSegueWithIdentifier("ShowListItem", sender: tableView.cellForRowAtIndexPath(indexPath))
    }
}










