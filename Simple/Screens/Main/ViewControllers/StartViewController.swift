//
//  StartViewController.swift
//  Simple
//
//  Created by Jennifer Nordwall on 18/03/2016.
//  Copyright © 2016 Jennifer Nordwall. All rights reserved.
//

import UIKit

class StartViewController: UIViewController {

    // MARK: - View Lifecycle
    
    // this is where you should instanciate font styles and colors
    // things that only will be updated once
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Start"
    }
    
    // MARK: - Actions
    
    // this is another way to react when you hit buttons and want to go to the next view
    @IBAction func buttonTouchedUpInside(sender: UIButton) {
        self.performSegueWithIdentifier("ShowList", sender: sender)
    }
}

