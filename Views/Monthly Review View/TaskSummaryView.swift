//
//  TaskSummaryView.swift
//  TaskManager
//
//  Created by Emirhan Gökçe on 27.01.2026.
//

import SwiftUI

struct TaskSummaryView: View {
    var body: some View {
        let columns = [
            GridItem(.adaptive(minimum: 140, maximum: 220), spacing: 16)
        ]
        
        ScrollView { // allows content to scroll if needed on very small screens
            LazyVGrid(columns: columns, spacing: 16) {
                SummaryItemView(numberOfTasks: 15, text: "Done", dimX: 0, dimY: 0)
                SummaryItemView(numberOfTasks: 8, text: "Ongoing", dimX: 0, dimY: 0)
                SummaryItemView(numberOfTasks: 3, text: "Pending", dimX: 0, dimY: 0)
                SummaryItemView(numberOfTasks: 2, text: "Overdue", dimX: 0, dimY: 0)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 8)
        }
    }
}


struct SummaryItemView : View {
    let numberOfTasks : Int
    let text : String
    let dimX : CGFloat
    let dimY : CGFloat
    var body: some View{
        ZStack{
            RoundedRectangle(cornerRadius: 20)
                .fill(.purple3)
            
            VStack(spacing:15){
                Text("\(numberOfTasks)")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
                
                Text(text)
                    .font(.caption)
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
            }
        }
        .frame(maxWidth: .infinity)
        .frame(minHeight: 120)
        .padding(8)
    }
}

#Preview {
    ZStack {
        Color("purple1").ignoresSafeArea()
        TaskSummaryView()
            .frame(width: 300, height:400)
    }
}
