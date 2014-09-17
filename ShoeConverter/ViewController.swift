//
//  ViewController.swift
//  ShoeConverter
//
//  Created by David Lu on 9/15/14.
//  Copyright (c) 2014 Dave Lu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var mensShoeSizeTextField: UITextField!
    
    @IBOutlet weak var mensConvertedShoeSizeLabel: UILabel!
    
    @IBOutlet weak var womensConvertShoeSizeLabel: UILabel!
    
    
    @IBOutlet weak var womensShoeSizeTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

  
    @IBAction func convertButtonPressed(sender: UIButton)
    {
    let sizeFromTextField = mensShoeSizeTextField.text.toInt()!
    let conversionConstant = 30
    mensConvertedShoeSizeLabel.hidden = false
    mensConvertedShoeSizeLabel.text =
        "\(sizeFromTextField + conversionConstant)" + " in European Shoe Size"
    }
    
    
    @IBAction func convertWomensShoeSizeButtonPressed(sender: UIButton)
    {
        let sizeFromTextField = Double((womensShoeSizeTextField.text as NSString).doubleValue)
        let conversionConstant = 30.5
        womensConvertShoeSizeLabel.hidden = false
        womensConvertShoeSizeLabel.text = "\(sizeFromTextField + conversionConstant)" + " in European Shoe Size"
        
        
    }
    
}

