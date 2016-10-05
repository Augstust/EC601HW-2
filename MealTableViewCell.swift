//
//  MealTableViewCell.swift
//  FoodTracker
//
//  Created by Zheheng Song on 10/4/16.
//  Copyright © 2016 Zheheng Song. All rights reserved.
//

import UIKit

class MealTableViewCell: UITableViewCell {
    // Mark: Properties
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var ratingControl: RatingControl!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
