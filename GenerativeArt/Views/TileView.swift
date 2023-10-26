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
    let marketTwo = Color.blue
    
    //Devide on colors
    let flipForColor = Coin.flip()
    
    //MARK: Computing property
    
    //Set the colors based on the coin flip
    var color1: Color{
        if(flipForColor == .heads){
            return markerOne
        }else{
            return marketTwo
        }
    }
    
    var color2: Color{
        if(flipForColor == .tails){
            return markerOne
        }else{
            return marketTwo
        }
    }
    
    var body: some View {
        ZStack {
            if(flipOne == .heads){
                TriangleTopRight()
                    .fill(color1)
                    .stroke(.black)
                    .aspectRatio(1.0, contentMode: .fit)
                    
                TriangleBottomLeft()
                    //.fill(.black)
                    .stroke(.black)
                    .aspectRatio(1.0, contentMode: .fit)
            }else{
                TriangleTopLeft()
                    .fill(color2)
                    .stroke(.black)
                    .aspectRatio(1.0, contentMode: .fit)
                TriangleBottomRight()
                    .fill(color1)
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
