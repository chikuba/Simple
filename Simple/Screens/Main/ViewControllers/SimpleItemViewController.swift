//
//  SimpleItemViewController.swift
//  Simple
//
//  Created by Jennifer Nordwall on 18/03/2016.
//  Copyright © 2016 Jennifer Nordwall. All rights reserved.
//

import UIKit

class SimpleItemViewController: UIViewController {
    
    var coolTitle: String?
    
    // IBOutlet will make them exposed in the interface builder.
    // Make sure that they are 'weak' since we should not be resposible for them
    @IBOutlet weak var coolLabel: UILabel!
    
    // Use the MARK keyword to make nice separatins in the code in the top right dropdown menu
    // MARK: - View Lifecycle
    
    // this is where you should instanciate font styles and colors
    // things that only will be updated once
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Simple Item"
        
        self.coolLabel.text = coolTitle
    }
}
