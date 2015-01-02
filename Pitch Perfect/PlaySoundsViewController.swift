//
//  PlaySoundsViewController.swift
//  Pitch Perfect
//
//  Created by Riyaz Ahamed on 02/01/15.
//  Copyright (c) 2015 iAppTest Inc. All rights reserved.
//

import UIKit

/* This class helps in loading UI for the PlaySounds View */
class PlaySoundsViewController: UIViewController {

    @IBOutlet weak var stopButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(animated: Bool) {
        stopButton.hidden = true // hides the stopButton outlet after loading the UI
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func snailButton(sender: UIButton) {
        stopButton.hidden = false // shows stop button
    }
    
    @IBAction func rabbitButton(sender: UIButton) {
        stopButton.hidden = false // shows the stop button
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
