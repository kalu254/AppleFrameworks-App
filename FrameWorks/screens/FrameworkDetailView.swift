//
//  FrameworkDetailView.swift
//  FrameWorks
//
//  Created by Luka Macharia on 20/01/2025.
//

import SwiftUI

struct FrameworkDetailView: View {
    let framework: Framework
    @State private var isShowingSafariView: Bool = false
    var body: some View {
        VStack {
            Spacer()
            FrameWorkTitleView(isGridView: true, framework: framework)
            Text(framework.description).font(.body)
                .padding()
            Spacer()
            Button{
                isShowingSafariView = true
            } label:{
                FrameworkButton(title: "Learn More")
            }
            Spacer()
        }.fullScreenCover(isPresented: $isShowingSafariView){
            SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
        }
    }
}

