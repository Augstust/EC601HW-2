//
//  File.swift
//  FoodTracker
//
//  Created by Zheheng Song on 10/4/16.
//  Copyright © 2016 Zheheng Song. All rights reserved.
//

import UIKit

class Meal {
    //Mark: properties
    var name: String
    var photo: UIImage?
    var rating: Int

    //Mark: Initialization
    init?(name: String, photo: UIImage?, rating: Int) {
        self.name = name
        self.photo = photo
        self.rating = rating
        if self.rating < 0 || self.name.isEmpty{
            return nil
        }
    }
}
