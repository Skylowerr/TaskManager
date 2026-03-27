//
//  ContentView.swift
//  TaskManager
//
//  Created by Emirhan Gökçe on 25.01.2026.
//

import SwiftUI

struct GettingStartedView: View {
    
    let imageDim : CGFloat = 300
    var body: some View {
        
        NavigationStack {
            ZStack {
                Color(.lightBlue1).ignoresSafeArea()
                
                VStack {
                    ImageHeader()
                        .offset(y: 100)
                        .scaleEffect(1.7)
                    
                    Spacer()
                    
                    BottomOfGettingStartedView()
                        .padding()
                }
            }
            
            .toolbar(.hidden)
        }
        
        
    }
}



#Preview {
    GettingStartedView()
        .preferredColorScheme(.dark)
}
