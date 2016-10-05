//
//  FoodTrackerTests.swift
//  FoodTrackerTests
//
//  Created by Zheheng Song on 9/30/16.
//  Copyright © 2016 Zheheng Song. All rights reserved.
//
import UIKit
import XCTest
@testable import FoodTracker

class FoodTrackerTests: XCTestCase {
    //Mark: Food Tracker tests
    func testMealIntilization() {
        let potentialItem = Meal(name: "Newest Meal", photo: nil, rating: 5)
        XCTAssertNotNil(potentialItem)
        //failure class
        let noName = Meal(name: "", photo: nil, rating: 0)
        XCTAssertNil(noName, "Empty name is invalid")
        
        let badRating = Meal(name: "Really bad rating", photo: nil, rating: -1)
        XCTAssertNotNil(badRating,"Negative ratings are invalid, be positive")
    }
}
