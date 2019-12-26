//
//  TabBarController.swift
//  TabExperiment
//
//  Created by İlkay Aktaş on 26.12.2019.
//  Copyright © 2019 İlkay Aktaş. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController{

    var str: String?

    override var selectedIndex: Int{
        didSet {
            tabChangedTo(selectedIndex: selectedIndex)
        }
    }
    override var selectedViewController: UIViewController? {
        didSet {
            tabChangedTo(selectedIndex: selectedIndex)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
    }
    
    func tabChangedTo(selectedIndex: Int) {
        print(selectedIndex)
        
        if(selectedIndex == 0){
            let controller = selectedViewController as! ViewController1
            controller.label.text = ". \(str!)"
        }
        
        if selectedIndex == 1 {
            let controller = selectedViewController as! ViewController2
            controller.label.text = "_ \(str!)"
        }
    }

}
