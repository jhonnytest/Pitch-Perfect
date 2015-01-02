//
//  PlaySoundsViewController.swift
//  Pitch Perfect
//
//  Created by Riyaz Ahamed on 02/01/15.
//  Copyright (c) 2015 iAppTest Inc. All rights reserved.
//

import UIKit
import AVFoundation

/* This class helps in loading UI for the PlaySounds View */
class PlaySoundsViewController: UIViewController {

    @IBOutlet weak var stopButton: UIButton!
    var audioPlayer: AVAudioPlayer! // creates an instance of AVAudioPlayer
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if var filePath = NSBundle.mainBundle().pathForResource("09 Jab Tak Hai Jaan - The Poem", ofType: "mp3") {
            var filePathUrl = NSURL.fileURLWithPath(filePath) // it converts string path returned by NSBundle into NSURL(type)
            audioPlayer = AVAudioPlayer(contentsOfURL: filePathUrl, error: nil) // creates an instance of AVAudioPlayer
            audioPlayer.enableRate = true // it helps in adjusting the rate  of musicplay
        } else {
            println("Audio file not found!") // if the file doesn't exist in the path it executes the else part
        } // creates path to access the audio file but it returns only string type
        
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
        if audioPlayer.playing {
            audioPlayer.stop() // stops the music
            audioPlayer.currentTime = 0.0 // resets the music time to 0.0
            audioPlayer.rate = 0.25 // sets the rate of musicplay at 0.25 speed
            audioPlayer.play() // plays the music
        } else {
            audioPlayer.currentTime = 0.0 // resets the music time to 0.0
            audioPlayer.rate = 0.25 // sets the rate of musicplay at 0.25 speed
            audioPlayer.play() // plays the music
        } // checks whether the audioPlayer is on if so stop it and then play else play it normally
    }
    
    @IBAction func rabbitButton(sender: UIButton) {
        stopButton.hidden = false // shows the stop button
        if audioPlayer.playing {
            audioPlayer.stop() // stops the music
            audioPlayer.currentTime = 0.0 // resets the music time to 0.0
            audioPlayer.rate = 2 // sets the rate of musicplay at 2 speed
            audioPlayer.play() // plays the music
        } else {
            audioPlayer.currentTime = 0.0 // resets the music time to 0.0
            audioPlayer.rate = 2 // sets the rate of musicplay at 2 speed
            audioPlayer.play() // plays the music
        } // checks whether the audioPlayer is on if so stop it and then play else play it normally
    }
    
    @IBAction func stopAction(sender: UIButton) {
            audioPlayer.stop() // stops the music
            audioPlayer.currentTime = 0.0 // resets the music time to 0.0
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
