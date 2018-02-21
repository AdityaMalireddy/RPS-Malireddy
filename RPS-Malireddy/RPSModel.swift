//
//  RPSModel.swift
//  RPS-Malireddy
//
//  Created by Malireddy,Aditya Jytohiswaroop on 2/19/18.
//  Copyright © 2018 Malireddy,Aditya Jytohiswaroop. All rights reserved.
//

import Foundation
class RPSModel {
    
    enum Choice {
        case None,Rock,Paper,Scissor,Lizard,Spock
    }
    
    private static var SharedRPSModel:RPSModel{
        let rpsmodel=RPSModel()
        return rpsmodel
    }
    
    private var player1Choice:Choice = .None
    
    var player1_choice:Choice{
        get{
            return player1Choice
        }
        set{
            player1Choice=newValue
        }
    }
    private var player2Choice:Choice = .None
    
    var player2_choice:Choice{
        get{
            return player2Choice
        }
        set{
            player2Choice=newValue
        }
    }
    private var player1WinCount:Int=0
    
    var player1_wincount:Int{
        get{
            return player1WinCount
        }
        set{
            player1WinCount=newValue
        }
    }
    private var player2WinCount:Int=0
    
    var player2_wincount:Int{
        get{
            return player2WinCount
        }
        set{
            player2WinCount=newValue
        }
    }
    
    func reset() {
        player1Choice = .None
        player2Choice = .None
        player2_wincount = 0
        player1_wincount = 0    
    }
    private init() {
        player1Choice = .None
        player2Choice = .None
    }
    func haveResult() -> Bool {
        return player1Choice != .None && player2Choice != .None
    }
    func winner() -> String{
        
        if  (player1Choice == .Paper && player2Choice == .Scissor) || (player1Choice == .Paper && player2Choice == .Lizard) || (player1Choice == .Scissor && player2Choice == .Rock) || (player1Choice == .Scissor && player2Choice == .Spock) || (player1Choice == .Rock && player2Choice == .Paper) || (player1Choice == .Rock && player2Choice == .Spock) || (player1Choice == .Lizard && player2Choice == .Scissor) || (player1Choice == .Lizard && player2Choice == .Rock) || (player1Choice == .Spock && player2Choice == .Paper) || (player1Choice == .Spock && player2Choice == .Lizard) {
            
            player2WinCount+=1
            
            return "Player2 Wins"
            
        }
        else if player1Choice == player2Choice
        {
            return "It's a tie"
        }
        else
        {
            player1WinCount+=1
            return "Player1 Wins"
            
        }
        
    }
    func choosePlayer1(pick:Choice) {
        player1Choice=pick
    }
    func choosePlayer2(pick:Choice) {
        player2Choice=pick
    }
   
    class func sharedrps()->RPSModel
    {
        return SharedRPSModel
    }
  
}
