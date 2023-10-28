//
//  MosaicView.swift
//  GenerativeArt
//
//  Created by David Li on 2023-10-24.
//

import SwiftUI

struct MosaicView: View {
    var body: some View {
        Grid(horizontalSpacing: 0, verticalSpacing: 0){
            GridRow{
                TileView()
                TileView()
                TileView()
            }
        }
        
        
    }
}

#Preview {
    MosaicView()
}
