//
//  CustomTabBarView.swift
//  CustomTabBar
//
//  Created by Adam on 25/06/2018.
//  Copyright © 2018 Adam Moskovich. All rights reserved.
//

import UIKit

protocol  CustomTabBarViewDelegate:class {
    func tabBarViewChangedSelectedIndex(at index: Int)
}

class CustomTabBarView: UIView {
    
    struct Constants {
        static let shadowRadius: CGFloat = 4.0
        static let grayRatio: CGFloat = 200/255
        static let shadowOffset = CGSize(width: 0, height: -5)
        static let shadowOpacity: Float = 0.5
    }

    @IBOutlet weak var backCircleView: UIView!
    @IBOutlet weak var tabViewBackgroundView: UIView!
    
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button5: UIButton!
    
    weak var delegte: CustomTabBarViewDelegate?
    
    func addShadow() {
        backCircleView.layer.shadowColor = UIColor(red: Constants.grayRatio, green: Constants.grayRatio, blue: Constants.grayRatio, alpha: 1).cgColor
        backCircleView.layer.shadowRadius = Constants.shadowRadius
        backCircleView.layer.shadowOffset = Constants.shadowOffset
        backCircleView.layer.shadowOpacity = Constants.shadowOpacity
        
        tabViewBackgroundView.layer.shadowColor = UIColor(red: Constants.grayRatio, green: Constants.grayRatio, blue: Constants.grayRatio, alpha: 1).cgColor
        tabViewBackgroundView.layer.shadowRadius = Constants.shadowRadius
        tabViewBackgroundView.layer.shadowOffset = Constants.shadowOffset
        tabViewBackgroundView.layer.shadowOpacity = Constants.shadowOpacity
    }
    
    
    @IBAction func tapBarButtonPressed(_ sender: UIButton) {
        print(sender.tag)
        delegte?.tabBarViewChangedSelectedIndex(at: sender.tag)
    }
    
}
