//
//  LeagueVC.swift
//  app-swoosh
//
//  Created by Marcel Duarte on 8/8/17.
//  Copyright © 2017 Marcel Duarte. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {
    
    var player: Player!
    @IBOutlet weak var nextBtn: BorderButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        player = Player() //Initialize the struct on loading view
    }
    
    //Programatically loading Segues
    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }
    
    @IBAction func onMensTapped(_ sender: Any) {
        selectLeague(leagueType: "mens")
    }
    
    @IBAction func onWomensTapped(_ sender: Any) {
        selectLeague(leagueType: "womens")
    }
    
    @IBAction func onCoedTapped(_ sender: Any) {
        selectLeague(leagueType: "coed")
    }
    
    // Logic to enable the next button and set the Player struct instance Desired League variable
    func selectLeague(leagueType: String) {
        player.desiredLeague = leagueType
        nextBtn.isEnabled = true
    }
    
    //Function passes data to the SkillVC. prepareForSegue is ALWAYS called before viewDidLoad on destination VC.
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC {
            //'if let' sequence will try to run the statement
            // as? is downcasting Destination View Controller to SkillVC - should work since SkillVC inherits from UIViewController
            // skillVC stores the SkillVC class code
            
            skillVC.player = player
            //Passing player from LeagueVC to player in SkillVC
            
        }
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
