//
//  ImageHeader.swift
//  TaskManager
//
//  Created by Emirhan Gökçe on 26.01.2026.
//

import SwiftUI

struct ImageHeader : View {
    let imageDimX : CGFloat = 350
    let imageDimY : CGFloat = 250

    var body: some View {
        Image(gettingStartedImage)
            .resizable()
            .scaleEffect(2.5)
            .frame(width: imageDimX, height: imageDimY)
            .clipShape(SquareCircleShape())
            .padding()
            .scaleEffect(0.8)

    }
}

#Preview {
    ImageHeader()
}
