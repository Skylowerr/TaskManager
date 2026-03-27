//
//  MonthlyReviewView.swift
//  TaskManager
//
//  Created by Emirhan Gökçe on 26.01.2026.
//

import SwiftUI

struct MonthlyReviewView: View {
    var body: some View {
        ZStack{
            LinearGradient(colors: [.lightPurple, .purple1], startPoint: .topTrailing, endPoint: .bottomLeading)
                .ignoresSafeArea()
                        
            
            VStack{
                TopAvatarView()
                
                TitleView()
                
                CurrentTaskView()
                
                MonthlyReviewTitleView()
                
                TaskSummaryView()
                
                BottomView()
                
                Spacer()
                
            }
            
            
        }
    }
}

#Preview {
    MonthlyReviewView()
}
