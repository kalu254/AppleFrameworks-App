//
//  FrameworkDetailView.swift
//  FrameWorks
//
//  Created by Luka Macharia on 20/01/2025.
//

import SwiftUI

struct FrameworkDetailView: View {
    let framework: Framework
    @Binding var isShowingDetailView: Bool
    @State var isShowingSafariView: Bool = false
    var body: some View {
        VStack {
            XDismissButton(isShowing: $isShowingDetailView)
            Spacer()
            FrameWorkTitleView(framework: framework)
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

