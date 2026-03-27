//
//  TopAvatarView.swift
//  TaskManager
//
//  Created by Emirhan Gökçe on 26.01.2026.
//

import SwiftUI

struct TopAvatarView: View {
    let circleSize : CGFloat = 40
    var body: some View {
        HStack{
            ThreeLinesView(color: .white, unitWidth: 7, unitHeight: 40)
            
            Spacer()
            
            ZStack{
                ForEach(0..<7) {i in
                    let factor = 2 + 1.5 * CGFloat(i)
                    CircleView(
                        color: .lightPurple,
                        lineWidth: 1 / factor,
                        opacity: 5 / CGFloat(i),
                        dim: circleSize,
                        scaleFactor: factor
                    )
                }
                
                
                
                CircleImageView(color: Color.white, imageName: person2, size: 50, lineWidth: 3)
            }
            
            
            
        }
        
        .padding()
    }
}

struct CircleView : View {
    let color : Color
    let lineWidth : CGFloat
    let opacity : CGFloat
    let dim: CGFloat
    let scaleFactor  : CGFloat
    var body: some View {
        
        Circle()
            .stroke(color.opacity(opacity), lineWidth: lineWidth)
            .frame(width: dim, height: dim)
            .scaleEffect(scaleFactor)
    }
}

struct ThreeLinesView : View {
    let color: Color
    let unitWidth: CGFloat
    let unitHeight : CGFloat
    var body: some View {
        
        HStack{
            Capsule()
                .fill(color)
                .frame(width: unitWidth, height: unitHeight)
            
            Capsule()
                .fill(color)
                .frame(width: unitWidth, height: unitHeight)
                .offset(y: -10)
            
            Capsule()
                .fill(color)
                .frame(width: unitWidth, height: unitHeight)
                .offset(y: -20)
        }

    }
}

#Preview {
    ZStack {
        Color("purple1")
            .ignoresSafeArea()
        TopAvatarView()
    }
}
