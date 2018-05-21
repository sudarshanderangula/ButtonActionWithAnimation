//
//  ViewController.swift
//  ButtonActionWithAnimation
//
//  Created by Sundir Talari on 20/05/18.
//  Copyright © 2018 Sundir Talari. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var buttonObject: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func buttonAction(_ sender: Any) {
        /*
        UIView.animate(withDuration: 0.5) {
            self.buttonObject.frame.origin = CGPoint(x: self.buttonObject.frame.origin.x + 100, y: self.buttonObject.frame.origin.y + 100)
        }*/
        
        UIView.animate(withDuration: 0.5, animations: {
            self.buttonObject.frame.origin = CGPoint(x: self.buttonObject.frame.origin.x + 100, y: self.buttonObject.frame.origin.y + 100)
        }) { (completed) in
            self.buttonObject.frame.origin = CGPoint(x: self.buttonObject.frame.origin.x - 100, y: self.buttonObject.frame.origin.y + 100)
        }
 
        //print("button y is \(buttonObject.frame.origin.y)")
        print("button width is \(buttonObject.frame.size.width)")
        
        
    }
}

