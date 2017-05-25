
//
//  ViewController.swift
//  My_Closet
//
//  Created by Apple on 5/17/17.
//  Copyright © 2017 Dave Chan. All rights reserved.
//

import UIKit

class ClosetViewController: UIViewController {
    
    @IBOutlet var shoeLabel: UILabel!
    @IBOutlet var pantLabel: UILabel!
    @IBOutlet var shirtLabel: UILabel!
    @IBOutlet var hatLabel: UILabel!
    
    @IBOutlet var shuffleButton: UIButton!
    
    var testArray: [String] = [String]()
    var summerHatArray: [String] = [String]()
    var summerShirtArray: [String] = [String]()
    var summerPantArray: [String] = [String]()
    var summerShoeArray: [String] = [String]()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        summerHatArray = ["Fedora", "Straw Hat", "Baseball Cap", "Visor", "Helmet", "Bucket Hat"]
        summerShirtArray = ["Tank", "Crop Top", "T-Shirt", "BU!!!!", "Bikini Top", "Jersey"]
        summerPantArray = ["Jeans", "Khakis", "Skirt", "Shorts", "Daisy Dukes", "Bikini Bottoms"]
        summerShoeArray = ["Flip Flops", "Sandals", "Tevas", "Vans", "Converse", "Barefoot", "Sperry's"]
        
        let random = Int (arc4random_uniform(_:UInt32(summerHatArray.count)))
        self.hatLabel.text = summerHatArray[random]
        
        let random1 = Int (arc4random_uniform(_:UInt32(summerShirtArray.count)))
        self.shirtLabel.text = summerShirtArray[random1]
        
        let random2 = Int (arc4random_uniform(_:UInt32(summerPantArray.count)))
        self.pantLabel.text = summerPantArray[random2]
        
        let random3 = Int (arc4random_uniform(_:UInt32(summerShoeArray.count)))
        self.shoeLabel.text = summerShoeArray[random3]
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        for i in testArray{
            NSLog(i) // Each item here corresponds to a category (Sunny, Pastel) 
            // Can also access directly through testArray 
        }
    }
    
    @IBAction func randomizeAllFields(_ sender: Any) {
        let random = Int (arc4random_uniform(_:UInt32(summerHatArray.count)))
        self.hatLabel.text = summerHatArray[random]
        
        let random1 = Int (arc4random_uniform(_:UInt32(summerShirtArray.count)))
        self.shirtLabel.text = summerShirtArray[random1]
        
        let random2 = Int (arc4random_uniform(_:UInt32(summerPantArray.count)))
        self.pantLabel.text = summerPantArray[random2]
        
        let random3 = Int (arc4random_uniform(_:UInt32(summerShoeArray.count)))
        self.shoeLabel.text = summerShoeArray[random3]
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

