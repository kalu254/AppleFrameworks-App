//
//  FrameworkTitleView.swift
//  FrameWorks
//
//  Created by Luka Macharia on 21/01/2025.
//

import SwiftUI

struct FrameWorkTitleView : View {
    let isGridView: Bool
    let framework: Framework
    var body: some View {
        if(isGridView) {  VStack
            {
                Image(framework.imageName)
                    .resizable()
                    .frame(width: 90, height: 90)
                Text(framework.name).font(.title)
                    .fontWeight(.semibold)
                    .scaledToFit()
                    .minimumScaleFactor(0.5)
            }.padding() } else  { HStack
                {
                    Image(framework.imageName)
                        .resizable()
                        .frame(width: 70, height: 70)
                    Text(framework.name).font(.title)
                        .fontWeight(.semibold)
                        .scaledToFit()
                        .minimumScaleFactor(0.5)
                        .padding()
                }
            }
        
    }
}


#Preview {
    FrameWorkTitleView(isGridView:false,framework:MockData.sampleFramework)
}
