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
    @IBOutlet var colorPicker: UIPickerView!
    @IBOutlet var weatherPickerButton: UIButton!
    
    var wPickerData: [String] = [String]()
    var csPickerData: [String] = [String]()
    
    @IBOutlet var greyView: UIView!
    
    
    // Send Data from first screen to second
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowClosetSegue" {
            if let destination = segue.destination as? ClosetViewController {
                var testOutput: [String] = [String]()
                
                if let wTitle = weatherPickerButton.currentTitle {
                    testOutput.append(wTitle)
                }
                
                if let csTitle = colorPickerButton.currentTitle {
                    testOutput.append(csTitle)
                }
                
                destination.testArray = testOutput
            }
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.weatherPicker.delegate = self
        self.weatherPicker.dataSource = self
        
        self.colorPicker.dataSource = self
        self.colorPicker.delegate = self
        
        csPickerData = ["Neutral", "Bright", "Pastel", "Solid"]
        wPickerData = ["Sunny", "Cloudy", "Windy", "Raining", "Really Long Option"]
        
        
        weatherPicker.isHidden = true
        colorPicker.isHidden = true
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
        if (pickerView.tag == 0) {// weather
            return wPickerData.count
        }
        else if (pickerView.tag == 1) {//color
            return csPickerData.count
        }
        else{
            return 0
        }
    }
    
    
    // The data to return for the row and component(column) that's being passed in
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        if (pickerView.tag == 0) {// weather
            return wPickerData[row]
        }
        else if (pickerView.tag == 1) {//color
            return csPickerData[row]
        }
        else{
            return "Choose..."
        }

    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        if (pickerView.tag == 0){
            weatherPickerButton.setTitle(wPickerData[row], for: .normal)
            weatherPicker.isHidden = true
        }
        else if (pickerView.tag == 1) {
            colorPickerButton.setTitle(csPickerData[row], for: .normal)
            colorPicker.isHidden = true
        }
        else {
            
        }
    
        greyView.isHidden = true
    }
    
    @IBAction func showColorSelection(_ sender: Any) {
        if (colorPicker.isHidden) {
            colorPicker.isHidden = false
            greyView.isHidden = false
        } else {
            colorPicker.isHidden = true
        }
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

