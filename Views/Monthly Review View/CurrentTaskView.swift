//
//  CurrentTaskView.swift
//  TaskManager
//
//  Created by Emirhan Gökçe on 27.01.2026.
//

import SwiftUI

struct CurrentTaskView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading){
                Text("Mobile App Design")
                    .font(.title3)
                    .foregroundStyle(.white)
                    .fontWeight(.semibold)
                
                Text("Mike And Anita")
                    .font(.headline)
                    .fontWeight(.thin)
                    .foregroundStyle(.white.opacity(0.7))
                
                HStack {
                    let circleSize : CGFloat = 40
                    HStack(spacing: -10){
                        CircleImageView(
                            color: .white,
                            imageName: person1,
                            size: circleSize,
                            lineWidth: 2
                        )
                        
                        CircleImageView(
                            color: .white,
                            imageName: person2,
                            size: circleSize,
                            lineWidth: 2
                        )

                        
                    }
                    Spacer()
                    
                    Text("Now")
                        .foregroundStyle(.white)
                }
            }
            
            Spacer()
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 16)
                .fill(Color("purple3"))
        )
        .shadow(radius: 10)
        .padding()

    }
}

#Preview {
    ZStack {
        Color("purple1").ignoresSafeArea()
        CurrentTaskView()
    }
}
