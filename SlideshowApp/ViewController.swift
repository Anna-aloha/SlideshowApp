//
//  ViewController.swift
//  SlideshowApp
//
//  Created by Anna Takegawa on 6/18/18.
//  Copyright © 2018 anna.takegawa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer: Timer?
    var imageNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        slideShow.image = #imageLiteral(resourceName: "IMG_1197-EFFECTS.jpg")
        }

    @IBOutlet weak var slideShow: UIImageView!
    
    var isPlay = false
    @IBOutlet weak var playButton: UIButton!
    
    @IBAction func playAction(_ sender: UIButton) {
        isPlay = !isPlay
        if isPlay == true {
            playButton.setTitle("停止",for: .normal)
            timer = Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
        } else {
            playButton.setTitle("再生",for: .normal)
            timer?.invalidate()
        }
    }
    
    @objc func updateTimer(timer: Timer){
        imageNumber += 1
        displayImage()
    }
    
    func displayImage() {
        
        let imageArray = [#imageLiteral(resourceName: "IMG_1197-EFFECTS.jpg"), #imageLiteral(resourceName: "IMG_0291-EFFECTS (1).jpg"), #imageLiteral(resourceName: "IMG_0265.JPG")]
        
        if imageNumber > 2 {
            imageNumber = 0
        }
        if imageNumber < 0 {
            imageNumber = 2
        }
        
        let image = imageArray[imageNumber]
        
        slideShow.image = image
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func prev(_ sender: UIButton) {
        if timer == nil {
            imageNumber -= 1
            displayImage()
        }
    }
    @IBAction func next(_ sender: UIButton) {
        if timer == nil {
            imageNumber += 1
            displayImage()
        }
    }
    
}

