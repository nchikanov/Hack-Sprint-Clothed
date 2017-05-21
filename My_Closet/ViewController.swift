//
//  ViewController.swift
//  My_Closet
//
//  Created by Apple on 5/17/17.
//  Copyright © 2017 Dave Chan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet var weatherPicker: UIPickerView!

    @IBOutlet var colorPickerButton: UIButton!
    @IBOutlet var weatherPickerButton: UIButton!
    
    var wPickerData: [String] = [String]()
    var csPickerData: [String] = [String]()
    
    @IBOutlet var greyView: UIView!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowClosetSegue" {
            if let destination = segue.destination as? ClosetViewController {
                destination.test = "test"
            }
        }
    }
    
    
    /* TO DO:
     1. Figure out why picker is being loaded for all buttons.
     2. See if you can pass different data to the same picker or if we have to make a new picker. 
     3. Where is the data actually being loaded into the picker? It defaults to the weather picker data each time. I'm trying to load in the color scheme data. 
    */
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.weatherPicker.delegate = self
        self.weatherPicker.dataSource = self
        
        csPickerData = ["Neutral", "Bright", "Pastel", "Solid"]
        wPickerData = ["Sunny", "Cloudy", "Windy", "Raining", "Really Long Option"]
        
        
        weatherPicker.isHidden = true
        greyView.isHidden = true
    
    
    weatherPickerButton.setTitle("Choose...", for: .normal)
        colorPickerButton.setTitle("Choose...", for: .normal)
    
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // The number of colunms of data
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    
    // The numbers of rows of data
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        return wPickerData.count
        
    }
    
    
    // The data to return for the row and component(column) that's being passed in
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return wPickerData[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        weatherPickerButton.setTitle(wPickerData[row], for: .normal)
        weatherPicker.isHidden = true
        greyView.isHidden = true
    }
    
    @IBAction func showWeatherSelection(_ sender: Any) {
        if (weatherPicker.isHidden) {
            weatherPicker.isHidden = false
            greyView.isHidden = false
        } else {
            weatherPicker.isHidden = true
        }
    }
    
    
    


}

