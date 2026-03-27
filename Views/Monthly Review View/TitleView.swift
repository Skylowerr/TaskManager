//
//  MobileAppDesignView.swift
//  TaskManager
//
//  Created by Emirhan Gökçe on 27.01.2026.
//

import SwiftUI

struct TitleView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading){
                Text("Hi Skylowerr")
                    .font(.title)
                    .foregroundStyle(.white)
                    .fontWeight(.semibold)
                
                Text("6 Tasks are pending")
                    .font(.headline)
                    .fontWeight(.thin)
                    .foregroundStyle(.white.opacity(0.7))
            }
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ZStack {
        Color("purple1").ignoresSafeArea()
        TitleView()
    }
}
