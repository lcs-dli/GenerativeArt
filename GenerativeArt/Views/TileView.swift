//
//  TileView.swift
//  GenerativeArt
//
//  Created by David Li on 2023-10-24.
//

import SwiftUI



struct TileView: View {
    //MARK: Stored property
    let flipOne = Coin.flip()
    
    //choosing markers
    let markerOne = Color.red
    let markerTwo = Color.blue
    
    //Devide on colors
    let flipForColor = Coin.flip()
    
    //Determine which color will be filled color 1
    let flipTwo = Coin.flip()
    
    //Determine if the other triangle should be filled or blanck
    
    //MARK: Computing property
    
    //Set the colors based on the coin flip
    var color1: Color{
        return flipForColor == .heads ? markerOne : markerTwo
    }
    
    var color2: Color{
        return flipForColor == .tails ? markerOne : markerTwo
    }
    
    var body: some View {
        ZStack {
            if(flipOne == .heads){
                TriangleTopRight()
                    .fill(flipTwo == .heads ? color1 : .clear)
                    .stroke(.black)
                    .aspectRatio(1.0, contentMode: .fit)
                    
                TriangleBottomLeft()
                    .fill(flipTwo == .tails ? color1: .clear)
                    .stroke(.black)
                    .aspectRatio(1.0, contentMode: .fit)
            }else{
                TriangleTopLeft()
                    .fill(flipTwo == .heads ? color1 : .clear)
                    .stroke(.black)
                    .aspectRatio(1.0, contentMode: .fit)
                TriangleBottomRight()
                    .fill(flipTwo == .tails ? color1: .clear)
                    .stroke(.black)
                    .aspectRatio(1.0, contentMode: .fit)
            }
        }
        .padding()
    }
}

#Preview {
    TileView()
}
