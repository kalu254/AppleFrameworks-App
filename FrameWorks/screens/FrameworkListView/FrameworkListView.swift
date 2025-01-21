//
//  FrameworkListView.swift
//  FrameWorks
//
//  Created by Luka Macharia on 21/01/2025.
//

import SwiftUI

struct FrameworkListView: View {
    @StateObject var viewModel = FrameworkGridViewModel()
    
    var body: some View {
        NavigationView {
            List{
                ForEach(MockData.frameworks){ framework in
                    NavigationLink(destination:  FrameworkDetailView(framework: framework, isShowingDetailView: $viewModel.isShowingDetailView))
                    {
                        
                        FrameWorkTitleView(isGridView: false, framework: framework).onTapGesture {
                            viewModel.selectecFramework = framework
                        }
                    }
                }
                
            }.navigationTitle("🍎 Frameworks")
            
            
            
        }.accentColor(Color(.label))
        
    }
}

#Preview {
    FrameworkListView()
}
