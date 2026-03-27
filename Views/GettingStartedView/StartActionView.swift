//
//  StartActionView.swift
//  TaskManager
//
//  Created by Emirhan Gökçe on 26.01.2026.
//

import SwiftUI

struct StartActionView: View {
    var body: some View {
        NavigationLink {
            Text("An Amazing New View")
        } label: {
            ZStack {
                Circle()
                    .fill(.white)
                    .frame(width: 70, height: 70)
                    .offset(x: -50)
                    .shadow(color: .black.opacity(0.1), radius: 4, x: 5, y: 5)
                
                Text("Get Started")
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundStyle(.darkBlue1)
            }

        }
    }
}

#Preview {
    StartActionView()
}
