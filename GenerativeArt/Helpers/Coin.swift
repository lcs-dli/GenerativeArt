//
//  Coin.swift
//  GenerativeArt
//
//  Created by David Li on 2023-10-24.
//

import Foundation

enum Coin: Int{
    case heads = 1
    case tails = 2
    
    static func flip() -> Coin{
        let decision = Bool.random()
        
        if(decision){
            return .heads
        }
        return .tails
    }
}
