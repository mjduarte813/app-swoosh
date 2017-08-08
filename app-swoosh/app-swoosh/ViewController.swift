//
//  ViewController.swift
//  app-swoosh
//
//  Created by Marcel Duarte on 8/5/17.
//  Copyright © 2017 Marcel Duarte. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var swoosh: UIImageView!
    @IBOutlet weak var bgImg: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Dynamic UI without Autolayout
        swoosh.frame = CGRect(x: view.frame.size.width / 2 - swoosh.frame.size.width / 2, y: 50, width: swoosh.frame.size.width, height: swoosh.frame.size.height) //X gives you the far left of the frame.
        
        //Get view frame and set to= background image frame. Fill the whole screen
        bgImg.frame = view.frame
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

