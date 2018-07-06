//
//  ViewController.swift
//  final grade
//
//  Created by Sanya Jain on 02/07/18.
//  Copyright © 2018 Sanya Jain. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var current: UITextField!

    
    
    
    @IBOutlet weak var weight: UITextField!
    
    
    @IBOutlet var background: UIView!
    @IBOutlet weak var desired: UITextField!
    
    @IBOutlet weak var required: UILabel!
    
    @IBAction func calculatebutton(_ sender: Any) {
        if var currentgrade = Double( current.text!){
            if var final = Double(weight.text!){
                if var desiredgrade = Double( desired.text!){
                    var requiredgrade = Double((currentgrade * (1-(final/100)) - desiredgrade)/(final/100))
                    required.text = "\(0 - requiredgrade)"
                    
                    if 0-requiredgrade >= 100 {background.backgroundColor = .red}
                    else { background.backgroundColor = .green}
                    
                
            }
        }
    }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

