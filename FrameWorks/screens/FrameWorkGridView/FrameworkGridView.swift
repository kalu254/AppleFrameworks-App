//
//  FrameworkGridView.swift
//  FrameWorks
//
//  Created by Luka Macharia on 20/01/2025.
//

import SwiftUI

struct FrameworkGridView : View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    let columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    var body: some View {
        NavigationView {
            ScrollView{
                LazyVGrid(columns: columns){
                    ForEach(MockData.frameworks){ framework in
                        FrameWorkTitleView(isGridView: true, framework: framework).onTapGesture {
                            viewModel.selectecFramework = framework
                        }
                    }
                    
                }
            }.navigationTitle("🍎 Frameworks")
                .sheet(isPresented: $viewModel.isShowingDetailView){
                    FrameworkDetailView(framework: viewModel.selectecFramework! , isShowingDetailView: $viewModel.isShowingDetailView)
                }
            
        }
        
    }
}


#Preview {
    FrameworkGridView()
}


