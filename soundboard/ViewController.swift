//
//  ViewController.swift
//  soundboard
//
//  Created by Phincon on 23/06/19.
//  Copyright © 2019 dustry corportaon. All rights reserved.
//

import UIKit
import AVFoundation
import Alamofire

class ViewController: UIViewController {
    
    let API = Api(url: "https://jsonplaceholder.typicode.com/users")
    
    var audioPlayer:AVAudioPlayer?
    var soundList:[String] = ["mario_bros", "toet", "broken_angel", "mario_bros"]

    override func viewDidLoad() {
        super.viewDidLoad()
        callApi()
    }
    
    func playSound(_ index:Int) {
        let soundURL = Bundle.main.url(forResource: soundList[index], withExtension: "mp3")
        guard soundURL != nil else {
            return
        }
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
            audioPlayer?.play()
        }
        catch {
            print("error")
        }
    }
    
    func stopSound() {
        audioPlayer?.stop()
    }
    
    func callApi() {
        API.callGetApi()
    }

    @IBAction func aButtonTapped(_ sender: UIButton) {
        let soundIndex = sender.tag;
        playSound(soundIndex)
    }
    
    @IBAction func bButtonTapped(_ sender: UIButton) {
        let soundIndex = sender.tag;
        playSound(soundIndex)
    }
    @IBAction func cButtonTapped(_ sender: UIButton) {
        let soundIndex = sender.tag;
        playSound(soundIndex)
    }
    @IBAction func dButtonTapped(_ sender: UIButton) {
        let soundIndex = sender.tag;
        playSound(soundIndex)
    }
    @IBAction func stopButtonTapped(_ sender: Any) {
        stopSound()
    }
}

