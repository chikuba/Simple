//
//  SimpleListTableViewCell.swift
//  Simple
//
//  Created by Jennifer Nordwall on 18/03/2016.
//  Copyright © 2016 Jennifer Nordwall. All rights reserved.
//

import UIKit

class SimpleListTableViewCell: UITableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var rightImageView: UIImageView!
    
    // MARK: - Class
    
    class func reuseIdentifier() -> String {
        return "SimpleListTableViewCell" // this will return the name of this class
    }
    
    class func nibName() -> String {
        return "SimpleListTableViewCell"
    }
    
    class func height() -> CGFloat {
        return 115.0
    }
    
    // MARK: - Cell Lifecycle
    
    // this happens just after the nib is created and it allows you to customize your IBOutlets
    override func awakeFromNib() {
        super.awakeFromNib()

        self.rightImageView.image = UIImage(named: "example_image")
        
        // this makes the image view round with a black border
        self.rightImageView.layer.borderWidth = 1.0
        self.rightImageView.layer.masksToBounds = false
        self.rightImageView.layer.borderColor = UIColor.blackColor().CGColor
        self.rightImageView.layer.cornerRadius = self.rightImageView!.frame.height / 2.0
        self.rightImageView.clipsToBounds = true
    }
    
    // this happens before a cells is being reused. Have a look at apples doc
    // here you usally clear old content or make it not selected (if it's a selectable cell)
    override func prepareForReuse() {
        super.prepareForReuse()
        
        // nothing for now...
    }
    
    // MARK: - Properties
    
    var title: String? {
        didSet {
            self.titleLabel!.text = title
        }
    }
}
