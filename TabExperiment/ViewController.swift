//
//  ViewController.swift
//  TabExperiment
//
//  Created by İlkay Aktaş on 26.12.2019.
//  Copyright © 2019 İlkay Aktaş. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textView: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        textView.text = ""
        // Do any additional setup after loading the view.
    }

    var firstClicked = false
    var selectedIndex = 0
    
    @IBAction func vc1Clicked(_ sender: Any) {
        firstClicked = true
        selectedIndex = 0
        performSegue(withIdentifier: "segueToTab", sender: self)
    }
    
    @IBAction func vc2Clicked(_ sender: Any) {
        firstClicked = false
        selectedIndex = 1
        performSegue(withIdentifier: "segueToTab", sender: self)
    }
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "segueToTab"){
            let destinationViewController = segue.destination as! TabBarController
            destinationViewController.str = textView.text
            destinationViewController.selectedIndex = selectedIndex
        }
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }


}

