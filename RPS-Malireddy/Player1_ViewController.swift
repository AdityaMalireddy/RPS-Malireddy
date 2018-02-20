//
//  Player1_ViewController.swift
//  RPS-Malireddy
//
//  Created by Malireddy,Aditya Jytohiswaroop on 2/19/18.
//  Copyright © 2018 Malireddy,Aditya Jytohiswaroop. All rights reserved.
//

import UIKit

class Player1_ViewController: UIViewController {

    @IBOutlet weak var Player1_TF: UITextField!
    
    @IBOutlet weak var Player1_Bar_Title: UITabBarItem!
    @IBAction func Player1_edit_TF(_ sender: Any) {
        Player1_Bar_Title.title="\(Player1_TF.text ?? "Player 1")"
    }
    
  
    override func viewDidLoad() {
        super.viewDidLoad()

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
