
//
//  ViewController.swift
//  My_Closet
//
//  Created by Apple on 5/17/17.
//  Copyright © 2017 Dave Chan. All rights reserved.
//

import UIKit

class ClosetViewController: UIViewController {
    
    var test = "hi"
    
    @IBOutlet var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        NSLog(test)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

