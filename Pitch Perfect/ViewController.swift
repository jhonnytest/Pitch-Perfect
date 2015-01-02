//
//  ViewController.swift
//  Pitch Perfect
//
//  Created by Riyaz Ahamed on 29/11/14.
//  Copyright (c) 2014 iAppTest Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var stopButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(animated: Bool) {
        stopButton.hidden = true // hides the stop button
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func recordAction(sender: UIButton) {
        messageLabel.hidden = false // shows the message on view
        stopButton.hidden = false // shows the stop button
        println("recording!")
    }

}

