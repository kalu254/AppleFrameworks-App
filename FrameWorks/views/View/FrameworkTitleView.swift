//
//  FrameworkTitleView.swift
//  FrameWorks
//
//  Created by Luka Macharia on 21/01/2025.
//

import SwiftUI

struct FrameWorkTitleView : View {
    let framework: Framework
    var body: some View {
        VStack
        {
            Image(framework.imageName)
                .resizable()
                .frame(width: 90, height: 90)
            Text(framework.name).font(.title)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.5)
        }.padding()
    }
}
