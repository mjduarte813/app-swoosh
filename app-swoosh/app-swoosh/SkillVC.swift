//
//  SkillVC.swift
//  app-swoosh
//
//  Created by Marcel Duarte on 8/8/17.
//  Copyright © 2017 Marcel Duarte. All rights reserved.
//

import UIKit

class SkillVC: UIViewController {

    var player: Player! //implicitly unwrapped optional - there should always be code in Player
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        print(player.desiredLeague)  //Copied from LeagueVC
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
