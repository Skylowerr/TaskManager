//
//  SquareCircle.swift
//  TaskManager
//
//  Created by Emirhan Gökçe on 26.01.2026.
//

import SwiftUI

struct SquareCircle: View {
    var body: some View {
        SquareCircleShape()
            .stroke(Color.red, lineWidth: 3)
            .frame(width: 250, height: 250)
            
    }
}

struct SquareCircleShape : Shape{
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        let width = rect.maxX - rect.minY
        let radius = width / 4
        
        let ax = rect.midX - radius
        let ay = rect.minY
        
        let bx = rect.midX + radius
        let by = rect.minY
        
        let cx = rect.midX + radius
        let cy = rect.midY

        //Move to upper left corner
        path.move(to: CGPoint(x: ax, y: ay)) //Sol üst köşe
        
        //Draw a line to the right
        path.addLine(to: CGPoint(x: bx, y: by)) //Sağ alt köşe
        
        //Draw a line going down
        path.addLine(to: CGPoint(x: cx, y: cy)) //Sağ alt köşe

        // Draw a semicircle
        
        path.addArc(
            center: CGPoint(x: rect.midX, y: rect.midY),
            radius: radius,
            startAngle: .degrees(0),
            endAngle: .degrees(180),
            clockwise: false
        )
        
        //Go back to initial point
        path.addLine(to: CGPoint(x: ax, y: ay)) //Sağ alt köşe

        
        return path
    }
}

#Preview {
    SquareCircle()
}
