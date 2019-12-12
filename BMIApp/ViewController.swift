//
//  ViewController.swift
//  Pragya Gurung
//  301082435
//  Created by Pragya Gurung on 2019-12-11.
//  Copyright © 2019 CentennialCollege. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    private var calculatedBmi:Double = 0.0
    private var weightDouble:Double = 0.0
    private var heightDouble:Double = 0.0
    private var weight = ""
    private var height = ""
    @IBOutlet weak var textName: UITextField!
    @IBOutlet weak var textAge: UITextField!
    @IBOutlet weak var textGender: UITextField!
    @IBOutlet weak var textWeight: UITextField!

    @IBOutlet weak var unitSwitch: UISwitch!
    @IBOutlet weak var textheight: UITextField!
   
    @IBOutlet weak var bmiScore: UITextField!
    
    @IBOutlet weak var bmiMessage: UITextField!
    override func viewDidLoad() {
        textAge.delegate = self
        super.viewDidLoad()
        // Do any additional setup after loading the view.

    }

    @IBAction func calculateBMI(_ sender: Any) {
        weight = textWeight.text!
        height = textheight.text!
        weightDouble = Double(weight)!
        heightDouble = Double(height)!
        //will calculate BMI according to pound and inch
        if unitSwitch.isOn
        {
            calculatedBmi = (weightDouble * 703)/( heightDouble * heightDouble)
            bmiScore.text = String(calculatedBmi)
        }
            //will calculate BMI accoridng to kg and meter
        else
        {
            calculatedBmi = (weightDouble)/(heightDouble * heightDouble)
            bmiScore.text = String(calculatedBmi)
        }
        
        if(calculatedBmi < 16)
        {
            bmiMessage.text = "Severe Thinness"
        }
        else if (calculatedBmi >= 16 && calculatedBmi < 17)
        {
            bmiMessage.text = "Moderate Thinness"
        }
        else if (calculatedBmi >= 17 && calculatedBmi < 18.5)
        {
            bmiMessage.text = "Mild Thinness"
        }
        else if (calculatedBmi >= 18.5 && calculatedBmi < 25)
        {
            bmiMessage.text = "Normal"
        }
        else if (calculatedBmi >= 25 && calculatedBmi < 30)
        {
            bmiMessage.text = "Overweight"
        }
        else if (calculatedBmi >= 30 && calculatedBmi < 35)
        {
            bmiMessage.text = "Obese Class I"
        }
        else if (calculatedBmi >= 35 && calculatedBmi < 40)
        {
            bmiMessage.text = "Obese Class II"
        }
        else
        {
            bmiMessage.text = "Obese Class III"
        }
    }
    
    @IBAction func doneButton(_ sender: Any) {
        
        
    }
}

