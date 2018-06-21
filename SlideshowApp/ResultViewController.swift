//
//  ResultViewController.swift
//  SlideshowApp
//
//  Created by Anna Takegawa on 6/19/18.
//  Copyright © 2018 anna.takegawa. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var bigImage: UIImageView!
    
    var selectedImage: UIImage
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bigImage.image = selectedImage
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
