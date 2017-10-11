//
//  CatchInformationViewController.swift
//  fishList
//
//  Created by Tyler Knight on 10/10/17.
//  Copyright © 2017 Tyler Knight. All rights reserved.
//

import UIKit

class CatchInformationViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var speciesInputTextField: UITextField!
    @IBOutlet weak var lengthInputTextField: UITextField!
    @IBOutlet weak var weightInputTextField: UITextField!
    @IBOutlet weak var baitInputTextField: UITextField!
    
    
    @IBOutlet weak var weightLabel: UILabel!

    var weightAmount = 0.0
    
    @IBAction func addCatch(_ sender: UIButton) {
        if let weight = Double(weightInputTextField.text!) {
            weightAmount = weight
    }
     
        weightLabel.text = "\(weightAmount) lbs."
}

    // Called when 'return' key is pressed
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    // Called when user taps outside the text field
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
override func viewDidLoad() {
    
    speciesInputTextField.delegate = self
    lengthInputTextField.delegate = self
    weightInputTextField.delegate = self
    baitInputTextField.delegate = self
    
    
    super.viewDidLoad()

    
    
}
}
