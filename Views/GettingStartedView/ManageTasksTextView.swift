//
//  ManageTasksTextView.swift
//  TaskManager
//
//  Created by Emirhan Gökçe on 26.01.2026.
//

import SwiftUI


struct ManageTasksTextView: View {
    var body: some View {
        Text("Manage your daily tasks")
            .font(.largeTitle)
            .fontWeight(.bold)
            .foregroundStyle(.darkBlue1)
        
        Text("Team and Project management with solution providing App")
            .font(.headline)
            .fontWeight(.bold)
            .foregroundStyle(.darkBlue1)
    }
}

#Preview {
    ManageTasksTextView()
}
