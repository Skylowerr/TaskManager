//
//  BottomView.swift
//  TaskManager
//
//  Created by Emirhan Gökçe on 27.01.2026.
//

import SwiftUI

struct BottomView: View {
    var body: some View {
        HStack {
            SymbolView(imageName: "house")
            Spacer()
            SymbolView(imageName: "text.document")
            Spacer()
            SymbolView(imageName: "person")
            Spacer()
            SymbolView(imageName: "bell")
        }
        .padding()
        .frame(maxWidth: .infinity)
    }
}

struct SymbolView : View {
    let imageName : String
    var body: some View {
        Image(systemName: imageName)
            .font(.title3)
            .foregroundStyle(.white)
    }
}

#Preview {
    ZStack {
        Color("purple1").ignoresSafeArea()
        BottomView()
    }
}
