//
//  ResultsViewController.swift
//  RPS-Malireddy
//
//  Created by Malireddy,Aditya Jytohiswaroop on 2/19/18.
//  Copyright © 2018 Malireddy,Aditya Jytohiswaroop. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    @IBOutlet weak var Result_Lbl: UILabel!
    
    @IBOutlet weak var Player1_Lbl: UILabel!
    
    @IBOutlet weak var Player2_Lbl: UILabel!
    
    @IBAction func Reset_Btn(_ sender: Any) {
        AppDelegate.model.reset()
        Result_Lbl.text = "Make your selections on other tabs"
        Player1_Lbl.text = String (0)
        Player2_Lbl.text = String (0)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        if !AppDelegate.model.haveResult() {
            Result_Lbl.text = "Make your selection on other tabs"
        }
        else {
            
            
            Result_Lbl.text = AppDelegate.model.winner()
            Player1_Lbl.text = String (AppDelegate.model.player1_wincount)
            Player2_Lbl.text = String (AppDelegate.model.player2_wincount)
            
            AppDelegate.model.choosePlayer1(pick: .None)
            AppDelegate.model.choosePlayer2(pick: .None)
            
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Player1_Lbl.text = String (0)
        Player2_Lbl.text = String (0)

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
