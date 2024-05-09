//
//  ViewController.swift
//  PracticeControls
//
//  Created by Joaquin Villarreal on 04/03/2024.
//

import UIKit

class ViewController: UIViewController {
    
    // Outlets
    @IBOutlet weak var mybutton: UIButton!
    @IBOutlet weak var myPickerView: UIPickerView!
    
    // Variables
    
    private let myPickerViewValues = ["1","2","3","4","5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    // Buttons
        mybutton.setTitle("My Botton", for: .normal)
        mybutton.backgroundColor = .blue
        mybutton.setTitleColor(.white, for: .normal)
        
    // Pickers
        myPickerView.delegate = self
        myPickerView.dataSource = self
        
    }
    
    // Actions
    @IBAction func myButtonAction(_ sender: Any) {
        
        if mybutton.backgroundColor == .blue{
            mybutton.backgroundColor = .green
        } else {
            mybutton.backgroundColor = .blue
        }
    }
    
}

extension ViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return myPickerViewValues.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return myPickerViewValues[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let myString = myPickerViewValues[row]
        mybutton.setTitle(myString, for: .normal)
    }
}

