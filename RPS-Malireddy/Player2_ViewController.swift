//
//  Player2_ViewController.swift
//  RPS-Malireddy
//
//  Created by Malireddy,Aditya Jytohiswaroop on 2/19/18.
//  Copyright © 2018 Malireddy,Aditya Jytohiswaroop. All rights reserved.
//

import UIKit

class Player2_ViewController: UIViewController {

    @IBOutlet weak var Player2_TF: UITextField!
    
    @IBOutlet weak var Player2_Bar_Title: UITabBarItem!
    
    @IBAction func Player2_edit_TF(_ sender: Any) {
        Player2_Bar_Title.title="\(Player2_TF.text ?? "Player 2")"
    }
    
    @IBOutlet weak var rb: UIButton!
    
    @IBOutlet weak var pb: UIButton!
    
    @IBOutlet weak var sb: UIButton!
    
    @IBOutlet weak var lb: UIButton!
    
    @IBOutlet weak var spob: UIButton!
    
    @IBOutlet weak var MSelection_Lbl: UILabel!
    
    
    @IBAction func Rock_Btn(_ sender: Any) {
        AppDelegate.model.choosePlayer2(pick: .Rock)
        MSelection_Lbl.text = " Your Selection is Rock "
    }
    
    @IBAction func Paper_Btn(_ sender: Any) {
        AppDelegate.model.choosePlayer2(pick: .Paper)
        MSelection_Lbl.text = " Your Selection is Paper "
    }
    
    @IBAction func Scissor_Btn(_ sender: Any) {
        AppDelegate.model.choosePlayer2(pick: .Scissor)
        MSelection_Lbl.text = " Your Selection is Scissor "
    }
    @IBAction func Lizard_Btn(_ sender: Any) {
        AppDelegate.model.choosePlayer2(pick: .Lizard)
        MSelection_Lbl.text = " Your Selection is Lizard "
    }
    
    @IBAction func Spock_Btn(_ sender: Any) {
        AppDelegate.model.choosePlayer2(pick: .Spock)
        MSelection_Lbl.text = " Your Selection is Spock "
    }
    
    override func viewWillAppear(_ animated: Bool) {
        if(AppDelegate.model.player2_choice == .None){
            MSelection_Lbl.text = "Please Make a Selection"
            sb.isEnabled = true
            rb.isEnabled = true
            pb.isEnabled = true
            lb.isEnabled = true
            spob.isEnabled = true
            
        }else{
            MSelection_Lbl.text = "Your Selection is \(AppDelegate.model.player2_choice)"
            sb.isEnabled = false
            rb.isEnabled = false
            pb.isEnabled = false
            lb.isEnabled = false
            spob.isEnabled = false
        }
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
