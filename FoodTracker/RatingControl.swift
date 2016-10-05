//
//  RatingControl.swift
//  FoodTracker
//
//  Created by Zheheng Song on 10/3/16.
//  Copyright © 2016 Zheheng Song. All rights reserved.
//

import UIKit

class RatingControl: UIView {
    // Mark: Porperties
    var rating = 0{
        didSet{
            setNeedsLayout();
        }
    }
    var ratingButtons = [UIButton]()
    let spacing = 5
    let starCount = 5
    let emptyStarImage = UIImage(named: "emptyStar")
    let filledStarImage = UIImage(named: "filledStar")
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    // Mark : Initialization
   
    required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
     for _ in 0..<starCount{
        let button = UIButton()
        button.setImage(#imageLiteral(resourceName: "emptyStar"), for: .normal)
        button.setImage(filledStarImage, for: .selected)
        button.setImage(filledStarImage, for: .highlighted)
        
        button.adjustsImageWhenHighlighted = false
        
        button.addTarget(self, action: #selector(RatingControl.ratingButtonTapped(button:)), for: UIControlEvents.touchDown)
        ratingButtons += [button]
        
        addSubview(button)
        }
     func intrinsicContentSize() -> CGSize {
            let buttonSize = Int(frame.size.height)
            let width = (buttonSize * starCount) + (spacing * (starCount - 1))
            
            return CGSize(width: width, height: buttonSize)
        }

    }

    override func layoutSubviews() {
        let buttonSize = Int(frame.size.height)
        var buttonFrame = CGRect(x: 0, y: 0, width: 44, height: 44)
        for (index, button) in ratingButtons.enumerated(){
            buttonFrame.origin.x = CGFloat((44 + 5) * index)
            button.frame = buttonFrame
        }
        updateButtonSelectionStates()
    }
    // Mark: Button function
    func ratingButtonTapped(button: UIButton!){
        rating = ratingButtons.index(of: button)! + 1
        updateButtonSelectionStates()
        print("Button Pressed")
    }
    
    func updateButtonSelectionStates(){
        for (index, button) in ratingButtons.enumerated(){
            button.isSelected = index < rating
        }
    }
    
}
