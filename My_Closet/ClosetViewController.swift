
//
//  ViewController.swift
//  My_Closet
//
//  Created by Apple on 5/17/17.
//  Copyright © 2017 Nina Chikanov. All rights reserved.
//

import UIKit

/* TO DO: Add an option for "Choose..." so that if they don't choose anything its just all the arrays together? */

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
    
    /* COLORS */
    
    // NEUTRAL - SUN
    var sunNeutralHat: [UIImage] = [
        UIImage(named: "black-fedora")!,
        UIImage(named: "straw-hat")!,
        UIImage(named: "ucla-visor")!
    ]
    
    var sunNeutralShirt: [UIImage] = [
        UIImage(named: "stripe-tee")!
    ]
    
    var sunNeutralPant: [UIImage] = [
        UIImage(named:"running-shorts")!
    ]
    
    var sunNeutralShoe: [UIImage] = [
        UIImage(named: "heeled-boot")!,
        UIImage(named: "black-sperry")!,
        UIImage(named: "light-sperry")!,
        UIImage(named: "nike-sneaks")!,
        UIImage(named: "white-converse")!
    ]
    
    // NEUTRAL - RAIN
    var rainNeutralHat: [UIImage] = [
        UIImage(named: "blk-umbrella")!
    ]
    
    var rainNeutralShirt: [UIImage] = [
        UIImage(named: "black-poncho")!
    ]
    
    var rainNeutralPant: [UIImage] = [
        UIImage(named: "blck-legging")!,
        UIImage(named: "blk-rip-jean")!
    ]
    
    var rainNeutralShoe: [UIImage] = [
        UIImage(named: "blundstone")!,
        UIImage(named: "doc-marten")!
    ]
    
    // BRIGHT - SUN
    
    var sunBrightHat: [UIImage] = [
        UIImage(named: "yellow-cap")!,
        UIImage(named: "dubs-bucket")!
    ]
    
    var sunBrightShirt: [UIImage] = [
       
    ]
    
    var sunBrightPant: [UIImage] = [
        UIImage(named: "flower-shorts")!,
        UIImage(named: "pink-skirt")!
    ]
    
    var sunBrightShoe: [UIImage] = [
        UIImage(named: "light-sperry")!,
        UIImage(named: "white-converse")!
    ]
    
    // BRIGHT - RAIN
    
    var rainBrightHat: [UIImage] = [
        UIImage(named: "umbrella-hat")!,
        UIImage(named: "ucla-umbrella")!
    ]
    
    var rainBrightShirt: [UIImage] = [
        UIImage(named: "blue-rain-jckt")!
    ]
    
    var rainBrightPant: [UIImage] = [
    
    ]
    
    var rainBrightShoe: [UIImage] = [
        UIImage(named: "yellow-rain-boots")!
    ]
    
    // SOLID - SUN
    
    var sunSolidHat: [UIImage] = [
        UIImage(named: "black-fedora")!,
        UIImage(named: "straw-hat")!,
        UIImage(named: "yellow-cap")!,
        UIImage(named: "ucla-visor")!,
        UIImage(named: "dubs-bucket")!
    ]
    
    var sunSolidShirt: [UIImage] = [
        UIImage(named: "blue-tee")!,
        UIImage(named: "sf-giants")!
    ]
    
    var sunSolidPant: [UIImage] = [
        UIImage(named: "jean-shorts")!,
        UIImage(named: "running-shorts")!
    ]
    
    var sunSolidShoe: [UIImage] = [
        UIImage(named: "birks")!,
        UIImage(named: "heeled-boot")!,
        UIImage(named: "black-sperry")!,
        UIImage(named: "light-sperry")!,
        UIImage(named: "nike-sneaks")!,
        UIImage(named: "rainbow-flip")!,
        UIImage(named: "white-converse")!
    ]
    
    // SOLID - RAIN
    
    var rainSolidHat: [UIImage] = [
        UIImage(named: "blk-umbrella")!
    ]
    
    var rainSolidShirt: [UIImage] = [
        UIImage(named: "black-poncho")!,
        UIImage(named: "lblue-rain-jckt")!
    ]
    
    var rainSolidPant: [UIImage] = [
        UIImage(named: "blck-legging")!,
        UIImage(named: "blk-rip-jean")!,
        UIImage(named: "blue-rain-pant")!,
        UIImage(named: "khaki-jogger")!
    ]
    
    var rainSolidShoe: [UIImage] = [
        UIImage(named: "blundstone")!,
        UIImage(named: "doc-marten")!,
        UIImage(named: "tan-boots")!,
        UIImage(named: "yellow-rain-boots")!
    ]
    
    // BRUIN - SUN
    
    var sunBruinHat: [UIImage] = [
        UIImage(named: "ucla-visor")!
    ]
    
    var sunBruinShirt: [UIImage] = [
        UIImage(named: "bu-tank")!
    ]
    
    var sunBruinPant: [UIImage] = [
        
    ]
    
    var sunBruinShoe: [UIImage] = [
        
    ]
    
    // BRUIN - RAIN
    
    var rainBruinHat: [UIImage] = [
        UIImage(named: "ucla-umbrella")!
    ]
    
    var rainBruinShirt: [UIImage] = [

    ]
    
    var rainBruinPant: [UIImage] = [
        UIImage(named: "blue-rain-pant")!
    ]

    var rainBruinShoe: [UIImage] = [
        UIImage(named: "yellow-rain-boots")!
    ]

    
    // PASTEL - SUN
    
    var sunPastelHat: [UIImage] = [
        UIImage(named: "straw-hat")!
    ]
    
    var sunPastelShirt: [UIImage] = [
        UIImage(named:"blue-tee")!
    ]
    
    var sunPastelPant: [UIImage] = [
        UIImage(named: "flower-shorts")!,
        UIImage(named: "jean-shorts")!
    ]
    
    var sunPastelShoe: [UIImage] = [
        UIImage(named: "heeled-boot")!,
        UIImage(named: "light-sperry")!,
        UIImage(named: "white-converse")!
    ]
    
    // PASTEL - RAIN 
    
    var rainPastelHat: [UIImage] = [
        
    ]
    
    var rainPastelShirt: [UIImage] = [
        UIImage(named: "lblue-rain-jckt")!
    ]
    
    var rainPastelPant: [UIImage] = [
        
    ]
    
    var rainPastelShoe: [UIImage] = [
        
    ]
    
    var dictionary: [ String: [[[UIImage]]] ] = [:]
    var Neutrals = [[[UIImage]]]()
    var Pastels = [[[UIImage]]]()
    var Solids = [[[UIImage]]]()
    var Bruins = [[[UIImage]]]()
    var Brights = [[[UIImage]]]()
    var Default = [[[UIImage]]]()
    
    /* GUIDE TO ARRAY INDEXING */
    /*
     Dictionary(Key, Value)
     Key = Type of Color (Neutral, Bright, etc.)
     Value = 3D Array.
     
     dictionary[KEY][0] = SUNNY
     dictionary[KEY][1] = RAINY 
     
     dictionary[KEY][0][0] = SUNNY HATS - 0
     dictionary[KEY][0][1] = SUNNY SHIRTS - 1
     dictionary[KEY][0][2] = SUNNY PANTS - 2
     dictionary[KEY][0][3] = SUNNY SHOES - 3

     dictionary[KEY][0][0][0] = first element of SUNNY HATS
     dictionary[KEY][0][0][1] = second element of SUNNY HATS
     etc...
     */
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hatShuffle.setTitle(" ", for: .normal)
        shirtShuffle.setTitle(" ", for: .normal)
        pantShuffle.setTitle(" ", for: .normal)
        shoeShuffle.setTitle(" ", for: .normal)
        
        var sunNeutral = [[UIImage]]()
        var rainNeutral = [[UIImage]]()
        
        sunNeutral += [sunNeutralHat, sunNeutralShirt, sunNeutralPant, sunNeutralShoe]
        rainNeutral += [rainNeutralHat, rainNeutralShirt, rainNeutralPant, rainNeutralShoe]
        
        Neutrals.append(sunNeutral) //0
        Neutrals.append(rainNeutral) //1
        dictionary["Neutral"] = Neutrals
        
        var sunPastel = [[UIImage]]()
        var rainPastel = [[UIImage]]()
        
        sunPastel += [sunPastelHat, sunPastelShirt, sunPastelPant, sunPastelShoe]
        rainPastel += [rainPastelHat, rainPastelShirt, rainPastelPant, rainPastelShoe]
        
        Pastels.append(sunPastel) //0
        Pastels.append(rainPastel) //1
        dictionary["Pastel"] = Pastels
        
        var sunSolid = [[UIImage]]()
        var rainSolid = [[UIImage]]()
        
        sunSolid += [sunSolidHat, sunSolidShirt, sunSolidPant, sunSolidShoe]
        rainSolid += [rainSolidHat, rainSolidShirt, rainSolidPant, rainSolidShoe]
        
        Solids.append(sunSolid) //0
        Solids.append(rainSolid) //1
        dictionary["Solid"] = Solids
        
        var sunBruin = [[UIImage]]()
        var rainBruin = [[UIImage]]()
        
        sunBruin += [sunBruinHat, sunBruinShirt, sunBruinPant, sunBruinShoe]
        rainBruin += [rainBruinHat, rainBruinShirt, rainBruinPant, rainBruinShoe]
        
        Bruins.append(sunBruin) //0
        Bruins.append(rainBruin) //1
        dictionary["Bruin"] = Bruins
        
        var sunBright = [[UIImage]]()
        var rainBright = [[UIImage]]()
        
        sunBright += [sunBrightHat, sunBrightShirt, sunBrightPant, sunBrightShoe]
        rainBright += [rainBrightHat, rainBrightShirt, rainBrightPant, rainBrightShoe]
        
        Brights.append(sunBright) //0
        Brights.append(rainBright) //1
        dictionary["Bright"] = Brights
        
        /* Add all options to Default */
        Default.append(sunNeutral) //0
        Default.append(rainNeutral) //1
        Default.append(sunPastel) //0
        Default.append(rainPastel) //1
        Default.append(sunSolid) //0
        Default.append(rainSolid) //1
        Default.append(sunBruin) //0
        Default.append(rainBruin) //1
        Default.append(sunBright) //0
        Default.append(rainBright) //1
        dictionary["Choose..."] = Default

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
        
        switch choiceArray[1] {
        case "Neutral":
            if (choiceArray[0] == "Sunny"){
                
                /*SUNNY*/
                let item = dictionary["Neutral"]?[0][0]
                let sunHatRand = Int (arc4random_uniform(_:UInt32((item?.count)!+1)))
                if ((item?.count)! > 0){
                    if (sunHatRand == (item?.count)!){
                        self.hatImg.image = nil
                    }
                    else {
                        self.hatImg.image = item?[sunHatRand]
                    }
                }
                
            } else if (choiceArray[0] == "Rainy"){
            
                /*RAINY*/
                let item = dictionary["Neutral"]?[1][0]
                let rainHatRand = Int (arc4random_uniform(_:UInt32((item?.count)!+1)))
                if ((item?.count)! > 0){
                    if (rainHatRand == (item?.count)!){
                        self.hatImg.image = nil
                    }
                    else {
                        self.hatImg.image = item?[rainHatRand]
                    }
                }
            
            } else {
                 print ("Weather option not yet implemented for HATS")
            }
            
            break
            
        case "Bright":
            if (choiceArray[0] == "Sunny"){
                
                /*SUNNY*/
                let item = dictionary["Bright"]?[0][0]
                let sunHatRand = Int (arc4random_uniform(_:UInt32((item?.count)!+1)))
                if ((item?.count)! > 0){
                    if (sunHatRand == (item?.count)!){
                        self.hatImg.image = nil
                    }
                    else {
                        self.hatImg.image = item?[sunHatRand]
                    }
                }
                
            } else if (choiceArray[0] == "Rainy"){
                
                /*RAINY*/
                let item = dictionary["Bright"]?[1][0]
                let rainHatRand = Int (arc4random_uniform(_:UInt32((item?.count)!+1)))
                if ((item?.count)! > 0){
                    if (rainHatRand == (item?.count)!){
                        self.hatImg.image = nil
                    }
                    else {
                        self.hatImg.image = item?[rainHatRand]
                    }
                }
                
            } else {
                print ("Weather option not yet implemented for HATS")
            }
            
            break
            
        case "Bruin":
            if (choiceArray[0] == "Sunny"){
                
                /*SUNNY*/
                let item = dictionary["Bruin"]?[0][0]
                let sunHatRand = Int (arc4random_uniform(_:UInt32((item?.count)!+1)))
                if ((item?.count)! > 0){
                    if (sunHatRand == (item?.count)!){
                        self.hatImg.image = nil
                    }
                    else {
                        self.hatImg.image = item?[sunHatRand]
                    }
                }
                
            } else if (choiceArray[0] == "Rainy"){
                
                /*RAINY*/
                let item = dictionary["Bruin"]?[1][0]
                let rainHatRand = Int (arc4random_uniform(_:UInt32((item?.count)!+1)))
                if ((item?.count)! > 0){
                    if (rainHatRand == (item?.count)!){
                        self.hatImg.image = nil
                    }
                    else {
                        self.hatImg.image = item?[rainHatRand]
                    }
                }
                
            } else {
                print ("Weather option not yet implemented for HATS")
            }

            
            break
            
        case "Solid":
            if (choiceArray[0] == "Sunny"){
                
                /*SUNNY*/
                let item = dictionary["Solid"]?[0][0]
                let sunHatRand = Int (arc4random_uniform(_:UInt32((item?.count)!+1)))
                if ((item?.count)! > 0){
                    if (sunHatRand == (item?.count)!){
                        self.hatImg.image = nil
                    }
                    else {
                        self.hatImg.image = item?[sunHatRand]
                    }
                }
                
            } else if (choiceArray[0] == "Rainy"){
                
                /*RAINY*/
                let item = dictionary["Solid"]?[1][0]
                let rainHatRand = Int (arc4random_uniform(_:UInt32((item?.count)!+1)))
                if ((item?.count)! > 0){
                    if (rainHatRand == (item?.count)!){
                        self.hatImg.image = nil
                    }
                    else {
                        self.hatImg.image = item?[rainHatRand]
                    }
                }
                
            } else {
                print ("Weather option not yet implemented for HATS")
            }

            break
            
        case "Pastel":
            if (choiceArray[0] == "Sunny"){
                
                /*SUNNY*/
                let item = dictionary["Pastel"]?[0][0]
                let sunHatRand = Int (arc4random_uniform(_:UInt32((item?.count)!+1)))
                if ((item?.count)! > 0){
                    if (sunHatRand == (item?.count)!){
                        self.hatImg.image = nil
                    }
                    else {
                        self.hatImg.image = item?[sunHatRand]
                    }
                }

            } else if (choiceArray[0] == "Pastel"){
                
                /*RAINY*/
                let item = dictionary["Pastel"]?[1][0]
                let rainHatRand = Int (arc4random_uniform(_:UInt32((item?.count)!+1)))
                if ((item?.count)! > 0){
                    if (rainHatRand == (item?.count)!){
                        self.hatImg.image = nil
                    }
                    else {
                        self.hatImg.image = item?[rainHatRand]
                    }
                }
                
            } else {
                print ("Weather option not yet implemented for HATS")
            }

            
            break
            
        default:
            print("Color Choice not yet implemented for HATS")
            
        }
        
    }
    
    @IBAction func shuffleShirts(_ sender: Any) {
        
        switch choiceArray[1] {
        case "Neutral":
            
            if (choiceArray[0] == "Sunny"){
                /*SUNNY*/
                let item = dictionary["Neutral"]?[0][1]
                let sunShirtRand = Int (arc4random_uniform(_:UInt32((item?.count)!)))
                if ((item?.count)! > 0){
                    self.shirtImg.image = item?[sunShirtRand]
                }
            } else if (choiceArray[0] == "Rainy"){
                /*RAINY*/
                let item = dictionary["Neutral"]?[1][1]
                let rainShirtRand = Int (arc4random_uniform(_:UInt32((item?.count)!)))
                if ((item?.count)! > 0){
                    self.shirtImg.image = item?[rainShirtRand]
                }
            } else {
                print ("Weather option not yet implemented for SHIRTS")
            }
            
            break
            
        case "Bright":
            if (choiceArray[0] == "Sunny"){
                /*SUNNY*/
                let item = dictionary["Bright"]?[0][1]
                let sunShirtRand = Int (arc4random_uniform(_:UInt32((item?.count)!)))
                if ((item?.count)! > 0){
                    self.shirtImg.image = item?[sunShirtRand]
                }
            } else if (choiceArray[0] == "Rainy"){
                /*RAINY*/
                let item = dictionary["Bright"]?[1][1]
                let rainShirtRand = Int (arc4random_uniform(_:UInt32((item?.count)!)))
                if ((item?.count)! > 0){
                    self.shirtImg.image = item?[rainShirtRand]
                }
            } else {
                print ("Weather option not yet implemented for SHIRTS")
            }
            
            break
            
        case "Bruin":
            if (choiceArray[0] == "Sunny"){
                /*SUNNY*/
                let item = dictionary["Bruin"]?[0][1]
                let sunShirtRand = Int (arc4random_uniform(_:UInt32((item?.count)!)))
                if ((item?.count)! > 0){
                    self.shirtImg.image = item?[sunShirtRand]
                }
            } else if (choiceArray[0] == "Rainy"){
                /*RAINY*/
                let item = dictionary["Bruin"]?[1][1]
                let rainShirtRand = Int (arc4random_uniform(_:UInt32((item?.count)!)))
                if ((item?.count)! > 0){
                    self.shirtImg.image = item?[rainShirtRand]
                }
            } else {
                print ("Weather option not yet implemented for SHIRTS")
            }
            
            break
            
        case "Solid":
            if (choiceArray[0] == "Sunny"){
                /*SUNNY*/
                let item = dictionary["Solid"]?[0][1]
                let sunShirtRand = Int (arc4random_uniform(_:UInt32((item?.count)!)))
                if ((item?.count)! > 0){
                    self.shirtImg.image = item?[sunShirtRand]
                }
            } else if (choiceArray[0] == "Rainy"){
                /*RAINY*/
                let item = dictionary["Solid"]?[1][1]
                let rainShirtRand = Int (arc4random_uniform(_:UInt32((item?.count)!)))
                if ((item?.count)! > 0){
                    self.shirtImg.image = item?[rainShirtRand]
                }
            } else {
                print ("Weather option not yet implemented for SHIRTS")
            }
            
            break
            
        case "Pastel":
            if (choiceArray[0] == "Sunny"){
                /*SUNNY*/
                let item = dictionary["Pastel"]?[0][1]
                let sunShirtRand = Int (arc4random_uniform(_:UInt32((item?.count)!)))
                if ((item?.count)! > 0){
                    self.shirtImg.image = item?[sunShirtRand]
                }
            } else if (choiceArray[0] == "Rainy"){
                /*RAINY*/
                let item = dictionary["Pastel"]?[1][1]
                let rainShirtRand = Int (arc4random_uniform(_:UInt32((item?.count)!)))
                if ((item?.count)! > 0){
                    self.shirtImg.image = item?[rainShirtRand]
                }
            } else {
                print ("Weather option not yet implemented for SHIRTS")
            }
            
            break
            
        default:
            print("Color Choice not yet implemented for SHIRTS")
            
        }
        
    }

    @IBAction func shufflePants(_ sender: Any) {
        
        switch choiceArray[1] {
        case "Neutral":
            if (choiceArray[0] == "Sunny"){
                /*SUNNY*/
                let item = dictionary["Neutral"]?[0][2]
                let sunPantRand = Int (arc4random_uniform(_:UInt32((item?.count)!)))
                if ((item?.count)! > 0){
                    self.pantImg.image = item?[sunPantRand]
                }
            } else if (choiceArray[0] == "Rainy"){
                /*RAINY*/
                let item = dictionary["Neutral"]?[1][2]
                let rainPantRand = Int (arc4random_uniform(_:UInt32((item?.count)!)))
                if ((item?.count)! > 0){
                    self.pantImg.image = item?[rainPantRand]
                }
            } else {
                print ("Weather option not yet implemented for PANTS")
            }
            
            break
            
        case "Bright":
            if (choiceArray[0] == "Sunny"){
                /*SUNNY*/
                let item = dictionary["Bright"]?[0][2]
                let sunPantRand = Int (arc4random_uniform(_:UInt32((item?.count)!)))
                if ((item?.count)! > 0){
                    self.pantImg.image = item?[sunPantRand]
                }
            } else if (choiceArray[0] == "Rainy"){
                /*RAINY*/
                let item = dictionary["Bright"]?[1][2]
                let rainPantRand = Int (arc4random_uniform(_:UInt32((item?.count)!)))
                if ((item?.count)! > 0){
                    self.pantImg.image = item?[rainPantRand]
                }
            } else {
                print ("Weather option not yet implemented for PANTS")
            }

            break
            
        case "Bruin":
            if (choiceArray[0] == "Sunny"){
                /*SUNNY*/
                let item = dictionary["Bruin"]?[0][2]
                let sunPantRand = Int (arc4random_uniform(_:UInt32((item?.count)!)))
                if ((item?.count)! > 0){
                    self.pantImg.image = item?[sunPantRand]
                }
            } else if (choiceArray[0] == "Rainy"){
                /*RAINY*/
                let item = dictionary["Bruin"]?[1][2]
                let rainPantRand = Int (arc4random_uniform(_:UInt32((item?.count)!)))
                if ((item?.count)! > 0){
                    self.pantImg.image = item?[rainPantRand]
                }
            } else {
                print ("Weather option not yet implemented for PANTS")
            }

            
            break
            
        case "Solid":
            if (choiceArray[0] == "Sunny"){

                /*SUNNY*/
                let item = dictionary["Solid"]?[0][2]
                let sunPantRand = Int (arc4random_uniform(_:UInt32((item?.count)!)))
                if ((item?.count)! > 0){
                    self.pantImg.image = item?[sunPantRand]
                }
            } else if (choiceArray[0] == "Rainy"){
                /*RAINY*/
                let item = dictionary["Solid"]?[1][2]
                let rainPantRand = Int (arc4random_uniform(_:UInt32((item?.count)!)))
                if ((item?.count)! > 0){
                    self.pantImg.image = item?[rainPantRand]
                }
            } else {
                print ("Weather option not yet implemented for PANTS")
            }

            
            break
            
        case "Pastel":
            if (choiceArray[0] == "Sunny"){
                /*SUNNY*/
                let item = dictionary["Pastel"]?[0][2]
                let sunPantRand = Int (arc4random_uniform(_:UInt32((item?.count)!)))
                if ((item?.count)! > 0){
                    self.pantImg.image = item?[sunPantRand]
                }
            } else if (choiceArray[0] == "Rainy"){
                /*RAINY*/
                let item = dictionary["Pastel"]?[1][2]
                let rainPantRand = Int (arc4random_uniform(_:UInt32((item?.count)!)))
                if ((item?.count)! > 0){
                    self.pantImg.image = item?[rainPantRand]
                }
            } else {
                print ("Weather option not yet implemented for PANTS")
            }

            break
            
        default:
            print("Color Choice not yet implemented for PANTS")
            
        }

    }
    
    @IBAction func shuffleShoes(_ sender: Any) {
        
        switch choiceArray[1] {
        case "Neutral":
            
            if (choiceArray[0] == "Sunny"){
                /*SUNNY*/
                let item = dictionary["Neutral"]?[0][3]
                let sunShoeRand = Int (arc4random_uniform(_:UInt32((item?.count)!)))
                if ((item?.count)! > 0){
                    self.shoeImg.image = item?[sunShoeRand]
                }
            } else if (choiceArray[0] == "Rainy"){
                /*RAINY*/
                let item = dictionary["Neutral"]?[1][3]
                let rainShoeRand = Int (arc4random_uniform(_:UInt32((item?.count)!)))
                if ((item?.count)! > 0){
                    self.shoeImg.image = item?[rainShoeRand]
                }
            } else {
                print ("Weather option not yet implemented for SHOES")
            }
            
            break
            
        case "Bright":
            if (choiceArray[0] == "Sunny"){
                /*SUNNY*/
                let item = dictionary["Bright"]?[0][3]
                let sunShoeRand = Int (arc4random_uniform(_:UInt32((item?.count)!)))
                if ((item?.count)! > 0){
                    self.shoeImg.image = item?[sunShoeRand]
                }
            } else if (choiceArray[0] == "Rainy"){
                /*RAINY*/
                let item = dictionary["Bright"]?[1][3]
                let rainShoeRand = Int (arc4random_uniform(_:UInt32((item?.count)!)))
                if ((item?.count)! > 0){
                    self.shoeImg.image = item?[rainShoeRand]
                }
            } else {
                print ("Weather option not yet implemented for SHOES")
            }

            break
            
        case "Bruin":
            if (choiceArray[0] == "Sunny"){
                /*SUNNY*/
                let item = dictionary["Bruin"]?[0][3]
                let sunShoeRand = Int (arc4random_uniform(_:UInt32((item?.count)!)))
                if ((item?.count)! > 0){
                    self.shoeImg.image = item?[sunShoeRand]
                }
            } else if (choiceArray[0] == "Rainy"){
                /*RAINY*/
                let item = dictionary["Bruin"]?[1][3]
                let rainShoeRand = Int (arc4random_uniform(_:UInt32((item?.count)!)))
                if ((item?.count)! > 0){
                    self.shoeImg.image = item?[rainShoeRand]
                }
            } else {
                print ("Weather option not yet implemented for SHOES")
            }

            break
            
        case "Solid":
            if (choiceArray[0] == "Sunny"){
                /*SUNNY*/
                let item = dictionary["Solid"]?[0][3]
                let sunShoeRand = Int (arc4random_uniform(_:UInt32((item?.count)!)))
                if ((item?.count)! > 0){
                    self.shoeImg.image = item?[sunShoeRand]
                }
            } else if (choiceArray[0] == "Rainy"){
                /*RAINY*/
                let item = dictionary["Solid"]?[1][3]
                let rainShoeRand = Int (arc4random_uniform(_:UInt32((item?.count)!)))
                if ((item?.count)! > 0){
                    self.shoeImg.image = item?[rainShoeRand]
                }
            } else {
                print ("Weather option not yet implemented for SHOES")
            }

            break
            
        case "Pastel":
            if (choiceArray[0] == "Sunny"){
                /*SUNNY*/
                let item = dictionary["Pastel"]?[0][3]
                let sunShoeRand = Int (arc4random_uniform(_:UInt32((item?.count)!)))
                if ((item?.count)! > 0){
                    self.shoeImg.image = item?[sunShoeRand]
                }
            } else if (choiceArray[0] == "Rainy"){
                /*RAINY*/
                let item = dictionary["Pastel"]?[1][3]
                let rainShoeRand = Int (arc4random_uniform(_:UInt32((item?.count)!)))
                if ((item?.count)! > 0){
                    self.shoeImg.image = item?[rainShoeRand]
                }
            } else {
                print ("Weather option not yet implemented for SHOES")
            }

            break
            
        default:
            print("Color Choice not yet implemented for SHOES")
            
        }
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

