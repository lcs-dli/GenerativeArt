//
//  TileView.swift
//  GenerativeArt
//
//  Created by David Li on 2023-10-24.
//

import SwiftUI


struct TileView: View {
    //MARK: Stored property
    let flipOne = Bool.random()
    
    //MARK: Computing property
    var body: some View {
        ZStack {
            if(flipOne){
                TriangleTopRight()
                    //.fill(.black)
                    .stroke(.black)
                    .aspectRatio(1.0, contentMode: .fit)
                    
                TriangleBottomLeft()
                    //.fill(.black)
                    .stroke(.black)
                    .aspectRatio(1.0, contentMode: .fit)
            }else{
                TriangleTopLeft()
                    //.fill(.black)
                    .stroke(.black)
                    .aspectRatio(1.0, contentMode: .fit)
                TriangleBottomRight()
                    //.fill(.black)
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
