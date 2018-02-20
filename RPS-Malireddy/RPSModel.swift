//
//  RPSModel.swift
//  RPS-Malireddy
//
//  Created by Malireddy,Aditya Jytohiswaroop on 2/19/18.
//  Copyright © 2018 Malireddy,Aditya Jytohiswaroop. All rights reserved.
//

import Foundation
class RPSModel {
    private static var SharedRPSModel:RPSModel{
        let rps_model=RPSModel()
        return rps_model
    }
    enum Choice {
        case Rock,Paper,Scissor,Lizard,Spock,None
    }
    private var _p1_choice:Choice = .None
    var player1choice:Choice{
        get{
            return _p1_choice
        }
        set{
            _p1_choice=newValue
        }
    }
    private var _p2_choice:Choice = .None
    var player2choice:Choice{
        get{
            return _p2_choice
        }
        set{
            _p2_choice=newValue
        }
    }
    private var _p1_wincount:Int=0
    var p1_wincount:Int{
        get{
            return _p1_wincount
        }
        set{
            _p1_wincount=newValue
        }
    }
    private var _p2_wincount:Int=0
    var p2_wincount:Int{
        get{
            return _p2_wincount
        }
        set{
            _p2_wincount=newValue
        }
    }
    
    func reset() {
        player1choice = .None
        player2choice = .None
    }
    private init() {
        player1choice = .None
        player2choice = .None
    }
    func haveResult() -> Bool {
        return player1choice != .None && player2choice != .None
    }
    func winner() -> String{
        
        if (player1choice == .Rock && player2choice == .Paper)||(player1choice == .Rock && player1choice == .Spock) || (player1choice == .Paper && player2choice == .Scissor) || (player1choice == .Paper && player1choice == .Lizard) || (player1choice == .Scissor && player2choice == .Rock) || (player1choice == .Scissor && player1choice == .Spock)||(player1choice == .Lizard && player1choice == .Rock) || (player1choice == .Lizard && player1choice == .Scissor) || (player1choice == .Spock && player1choice == .Paper) || (player1choice == .Spock && player1choice == .Lizard){
            p2_wincount+=1
            return "player2 wins"
            
        }
        else if player1choice == player2choice
        {
            return "It's a tie"
        }
        else
        {
            p1_wincount+=1
            return "player1 wins"
            
        }
        
    }
    func choosePlayer1(pick:Choice) {
        player1choice=pick
    }
    func choosePlayer2(pick:Choice) {
        player2choice=pick
    }
    class func sharedrps()->RPSModel
    {
        return SharedRPSModel
    }
}
