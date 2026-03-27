//
//  BottomOfGettingStartingView.swift
//  TaskManager
//
//  Created by Emirhan Gökçe on 26.01.2026.
//

import SwiftUI

struct BottomOfGettingStartedView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 25){
            
            ManageTasksTextView()
            StartActionView()
            .padding()
        }
    }
}
#Preview {
    BottomOfGettingStartedView()
}
