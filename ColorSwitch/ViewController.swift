//
//  ViewController.swift
//  ColorSwitch
//
//  Created by Sivan.Payyadakath on 2019/04/23.
//  Copyright © 2019 Sivan.Payyadakath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //MArk outlets
    
    @IBOutlet weak var colorView: UIView!
    @IBOutlet weak var redControl: UISlider!
    @IBOutlet weak var greenContol: UISlider!
    @IBOutlet weak var blueControl: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        changeColorComponent()
    }

    @IBAction func changeColorComponent(){
        
        //Make sure program doen't crash if no switch is on
        
        if self.redControl == nil {
            return
        }
        
        let r: Float = self.redControl.value
        let g: Float = self.greenContol.value
        let b: Float = self.blueControl.value
        
        colorView.backgroundColor = UIColor(red: CGFloat(r), green: CGFloat(g), blue: CGFloat(b), alpha: 1)
        
    }

}

