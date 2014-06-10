//
//  ViewController.swift
//  RpnCalculatorKata
//
//  Created by Giordano Scalzo on 10/06/2014.
//  Copyright (c) 2014 XpItLondon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var rpnCalculator = MyTrivialRpnCalculator()
    
    @IBOutlet var Display3 : UILabel
    @IBOutlet var Display2 : UILabel
    @IBOutlet var Display1 : UILabel
    @IBOutlet var Display0 : UILabel
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onStarPressed(sender : AnyObject) {
        pressed("*")
    }
    @IBAction func on9Pressed(sender : AnyObject) {
        pressed("9")
    }
    @IBAction func on8Pressed(sender : AnyObject) {
        pressed("8")
    }
    @IBAction func on7Pressed(sender : AnyObject) {
        pressed("7")
    }
    @IBAction func onMinusPressed(sender : AnyObject) {
        pressed("-")
    }
    @IBAction func on6Pressed(sender : AnyObject) {
        pressed("6")
    }
    @IBAction func on5Pressed(sender : AnyObject) {
        pressed("5")
    }
    @IBAction func on4Pressed(sender : AnyObject) {
        pressed("4")
    }
    @IBAction func onPlusPressed(sender : AnyObject) {
        pressed("+")
    }
    @IBAction func on3Pressed(sender : AnyObject) {
        pressed("3")
    }
    @IBAction func on2Pressed(sender : AnyObject) {
        pressed("2")
    }
    @IBAction func on1Pressed(sender : AnyObject) {
        pressed("1")
    }
    @IBAction func onEnterPressed(sender : AnyObject) {
        pressed("enter")
    }
    @IBAction func onSlashPressed(sender : AnyObject) {
        pressed("/")
    }
    @IBAction func on0Pressed(sender : AnyObject) {
        pressed("0")
    }
}

extension ViewController {
    func pressed(key: String) {
        Display0.text = key
        Display1.text = key
        Display2.text = key
        Display3.text = key
    }
}

