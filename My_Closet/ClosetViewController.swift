
//
//  ViewController.swift
//  My_Closet
//
//  Created by Apple on 5/17/17.
//  Copyright © 2017 Dave Chan. All rights reserved.
//

import UIKit

class ClosetViewController: UIViewController {
    
    @IBOutlet var hatImg: UIImageView!
    @IBOutlet var shirtImg: UIImageView!
    @IBOutlet var pantImg: UIImageView!
    @IBOutlet var shoeImg: UIImageView!
    
    @IBOutlet var shoeShuffle: UIButton!
    @IBOutlet var pantShuffle: UIButton!
    @IBOutlet var shirtShuffle: UIButton!
    @IBOutlet var hatShuffle: UIButton!
    @IBOutlet var shuffleButton: UIButton!
    
    var choiceArray: [String] = [String]()
    
    var rainyHatArray: [String] = ["Umbrella"]
    var rainyShirtArray: [String] = ["Rain Jacket"]
    var rainyPantArray: [String] = ["Leggings", "Black Jeans", "Joggers"]
    var rainyShoeArray: [String] = ["Rain Boots", "Black Boots", "Brown Boots", "Running Shoes"]
    
    var sunnyHatImgs: [UIImage] = [
        UIImage(named: "black-fedora")!,
        UIImage(named: "straw-hat")!,
        UIImage(named: "yellow-cap")!,
        UIImage(named: "ucla-visor")!,
        UIImage(named: "dubs-bucket")!
    ]
    
    var sunnyShirtImgs: [UIImage] = [
        UIImage(named: "bu-tank")!,
        UIImage(named:"blue-tee")!,
        UIImage(named: "stripe-tee")!,
        UIImage(named: "bralette")!,
        UIImage(named: "sf-giants")!
    ]
    
    var sunnyPantImgs: [UIImage] = [
        UIImage(named: "flower-shorts")!,
        UIImage(named: "jean-shorts")!,
        UIImage(named: "pink-skirt")!,
        UIImage(named:"running-shorts")!
    ]
    
    var sunnyShoeImgs: [UIImage] = [
        UIImage(named: "birks")!,
        UIImage(named: "heeled-boot")!,
        UIImage(named: "black-sperry")!,
        UIImage(named: "light-sperry")!,
        UIImage(named: "nike-sneaks")!,
        UIImage(named: "rainbow-flip")!,
        UIImage(named: "white-converse")!
    
    ]
    
    //var dictionary: [String: [[UIImage]]] = [:]
    //var sunnyClothes = [[UIImage]]()
    // sunnyClothes[0] = Hats, 1 = Shirts, 2 = Pants, 3 = Shoes
    // TODO: Need to have an indexing of each array based on Color...how we do that?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hatShuffle.setTitle(" ", for: .normal)
        shirtShuffle.setTitle(" ", for: .normal)
        pantShuffle.setTitle(" ", for: .normal)
        shoeShuffle.setTitle(" ", for: .normal)
        
        //Note: Do we even need a dictionary to organize?
        /*sunnyClothes.append(sunnyHatImgs)
        sunnyClothes.append(sunnyShirtImgs)
        
        dictionary["Sunny"] = sunnyClothes*/
        randomizeAllFields((Any).self)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    
    }
    
    @IBAction func randomizeAllFields(_ sender: Any) {
            shuffleHats((Any).self)
            shuffleShirts((Any).self)
            shufflePants((Any).self)
            shuffleShoes((Any).self)
        
    } //end function
    
    @IBAction func shuffleHats(_ sender: Any) {
        
        switch choiceArray[0] {
        case "Sunny":
            /* HATS - SUNNY */
            let hatRand = Int (arc4random_uniform(_:UInt32(sunnyHatImgs.count+1)))
            // Don't always need a hat
            if (hatRand == sunnyHatImgs.count){
                self.hatImg.image = nil
            } else {
                self.hatImg.image = sunnyHatImgs[hatRand]
            }
            break
        case "Cloudy":
            break
        case "Windy":
            break
        case "Rainy":
            break
        default:
             print("This option has not been implemented in the Hat switch statement yet")
            break
        }
        
    }
    
    @IBAction func shuffleShirts(_ sender: Any) {
        
        switch choiceArray[0] {
        case "Sunny":
            let shirtRand = Int (arc4random_uniform(_:UInt32(sunnyShirtImgs.count)))
            self.shirtImg.image = sunnyShirtImgs[shirtRand]
            break
        case "Cloudy":
            break
        case "Windy":
            break
        case "Rainy":
            break
        default:
            print("This option has not been implemented in the Hat switch statement yet")
            break
        }

    
        
    }

    @IBAction func shufflePants(_ sender: Any) {
        
        switch choiceArray[0] {
        case "Sunny":
            let pantRand = Int (arc4random_uniform(_:UInt32(sunnyPantImgs.count)))
            self.pantImg.image = sunnyPantImgs[pantRand]
            break
        case "Cloudy":
            break
        case "Windy":
            break
        case "Rainy":
            break
        default:
            print("This option has not been implemented in the Hat switch statement yet")
            break
        }
    
    }
    
    @IBAction func shuffleShoes(_ sender: Any) {
        
        switch choiceArray[0] {
        case "Sunny":
            let shoeRand = Int (arc4random_uniform(_:UInt32(sunnyShoeImgs.count)))
            self.shoeImg.image = sunnyShoeImgs[shoeRand]
            break
        case "Cloudy":
            break
        case "Windy":
            break
        case "Rainy":
            break
        default:
            print("This option has not been implemented in the Hat switch statement yet")
            break
        }
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

