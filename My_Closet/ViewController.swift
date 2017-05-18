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

    @IBOutlet var weatherPickerButton: UIButton!
    
    var pickerData: [String] = [String]()
    
    @IBOutlet var greyView: UIView!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowClosetSegue" {
            if let destination = segue.destination as? ClosetViewController {
                destination.test = "test"
            }
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.weatherPicker.delegate = self
        self.weatherPicker.dataSource = self
        
        
        pickerData = ["Sunny", "Cloudy", "Windy", "Raining"]
        
        weatherPicker.isHidden = true
        greyView.isHidden = true
    weatherPickerButton.setTitle("Hello", for: .normal)
        
        
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
        return pickerData.count
    }
    
    
    // The data to return for the row and component(column) that's being passed in
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        weatherPickerButton.setTitle(pickerData[row], for: .normal)
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

