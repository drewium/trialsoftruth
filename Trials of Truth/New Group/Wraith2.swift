//
//  Wraith2.swift
//  Trials of Truth
//
//  Created by Drew Rios on 1/4/18.
//  Copyright © 2018 Relativistic. All rights reserved.
//

import UIKit


class Wraith2: Wraith {
    
    override var wraithName: String {
        get {
            return "LEVEL II"
        }
    }
    
    override var wraithImage: UIImage {
        get {
            return #imageLiteral(resourceName: "wraithT")
        }
    }
    
    
    //attack first no matter what, then act normal
    
    
    override func compMove(attackRate: Float, roundIndex: Int) -> RoundAction {
        if roundIndex == 0 {
            return RoundAction(message: primaryMessages[roundIndex], move: .Sword)
        }
        
        return super.compMove(attackRate: attackRate, roundIndex: roundIndex)
    }
    
}
