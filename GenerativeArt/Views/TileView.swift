//
//  TileView.swift
//  GenerativeArt
//
//  Created by David Li on 2023-10-24.
//

import SwiftUI


struct TileView: View {
    var body: some View {
        VStack {
            TriangleTopRight()
                //.fill(.black)
                .stroke(.black)
                .aspectRatio(1.0, contentMode: .fit)
                
            TriangleBottomLeft()
                //.fill(.black)
                .stroke(.black)
                .aspectRatio(1.0, contentMode: .fit)
            TriangleTopLeft()
                //.fill(.black)
                .stroke(.black)
                .aspectRatio(1.0, contentMode: .fit)
            TriangleBottomLeft()
                //.fill(.black)
                .stroke(.black)
                .aspectRatio(1.0, contentMode: .fit)
        }
        .padding()
    }
}

#Preview {
    TileView()
}
