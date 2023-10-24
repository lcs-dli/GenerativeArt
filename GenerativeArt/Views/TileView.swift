//
//  TileView.swift
//  GenerativeArt
//
//  Created by David Li on 2023-10-24.
//

import SwiftUI

struct TriangleTopRight: Shape{
    func path(in rect: CGRect) -> Path {
        //Make an empty path
        var path = Path()
        
        //Define the path
        path.move(to: CGPoint(x: rect.maxX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.minY))
        
        //return the path
        return path
    }
    
    
}

struct TriangleBottomLeft: Shape{
    func path(in rect: CGRect) -> Path {
        //Make an empty path
        var path = Path()
        
        //Define the path
        path.move(to: CGPoint(x: rect.minX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        
        //return the path
        return path
    }
}

struct TriangleTopLeft: Shape{
    func path(in rect: CGRect) -> Path {
        //Make an empty path
        var path = Path()
        
        //Define the path
        path.move(to: CGPoint(x: rect.minX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.minY))
        //return the path
        return path
    }
}

struct TriangleBottomRight: Shape{
    func path(in rect: CGRect) -> Path {
        //Make an empty path
        var path = Path()
        
        //Define the path
        path.move(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.maxY, y: rect.maxY))
        //return the path
        return path
    }
}
struct TileView: View {
    var body: some View {
        VStack {
            TriangleTopRight()
                //Make the shape be a square
                .aspectRatio(1.0, contentMode: .fit)
            TriangleBottomLeft()
                //Make the shape be a square
                .aspectRatio(1.0, contentMode: .fit)
            TriangleTopLeft()
                //Make the shape be a square
                .aspectRatio(1.0, contentMode: .fit)
            TriangleBottomLeft()
                //Make the shape be a square
                .aspectRatio(1.0, contentMode: .fit)
        }
        .padding()
    }
}

#Preview {
    TileView()
}
