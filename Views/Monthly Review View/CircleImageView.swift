//
//  CircleImageView.swift
//  TaskManager
//
//  Created by Emirhan Gökçe on 26.01.2026.
//

import SwiftUI

struct CircleImageView: View {
    let color : Color
    let imageName : String
    let size : CGFloat
    let lineWidth : CGFloat
    var body: some View {
        Image(imageName)
            .resizable()
            .scaledToFill()
            .clipShape(Circle())
            .overlay(
                Circle()
                    .stroke(color.opacity(0.7), lineWidth: lineWidth)
                    .shadow(radius: 10)
            )
            .frame(maxWidth: size, maxHeight:size) //scaledToFill ile beraber kendini sığdırır
    }
}

#Preview {
    ZStack {
        Color("purple1").ignoresSafeArea()
        VStack{
            CircleImageView(color: Color.red, imageName: person1, size: 200, lineWidth: 3)
            
            CircleImageView(color: Color.red, imageName: person2, size: 200, lineWidth: 3)
            
            CircleImageView(color: Color.red, imageName: person3, size: 200, lineWidth: 3)
            
            CircleImageView(color: Color.red, imageName: person4, size: 200, lineWidth: 3)
        }
    }
}
