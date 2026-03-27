//
//  MonthlyReviewTitleView.swift
//  TaskManager
//
//  Created by Emirhan Gökçe on 27.01.2026.
//

import SwiftUI

struct MonthlyReviewTitleView: View {
    var body: some View {
        
        HStack{
            Text("Mobile Review")
                .font(.title2)
                .foregroundStyle(.white)
                .fontWeight(.bold)
            Spacer()
            
            Image(systemName: "calendar.circle")
                .font(.title2)
                .foregroundStyle(.white)
                .background(.blue1)
                .clipShape(Circle())
        }
        .padding()

    }
}

#Preview {
    MonthlyReviewTitleView()
}
