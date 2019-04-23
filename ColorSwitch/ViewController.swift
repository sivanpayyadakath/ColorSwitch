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
    @IBOutlet weak var redControl: UISwitch!
    @IBOutlet weak var greenContol: UISwitch!
    @IBOutlet weak var blueControl: UISwitch!
    
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
        
        let r: CGFloat = self.redControl.isOn ? 1 : 0
        let g: CGFloat = self.greenContol.isOn ? 1 : 0
        let b: CGFloat = self.blueControl.isOn ? 1 : 0
        
        colorView.backgroundColor = UIColor(red: r, green: g, blue: b, alpha: 1)
        
    }

}

