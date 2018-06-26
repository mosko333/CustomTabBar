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


    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button5: UIButton!
    
    weak var delegte: CustomTabBarViewDelegate?
    
    
    @IBAction func tapBarButtonPressed(_ sender: UIButton) {
        delegte?.tabBarViewChangedSelectedIndex(at: sender.tag)
    }
    
}
