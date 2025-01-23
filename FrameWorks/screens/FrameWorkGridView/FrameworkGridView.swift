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
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: columns){
                    ForEach(MockData.frameworks){
                        framework in
                        NavigationLink(value: framework) {
                            FrameWorkTitleView(isGridView: true, framework: framework)
                        }
                    }
                    
                }
            }.navigationTitle(Text("🍎 Frameworks"))
                .navigationDestination(for: Framework.self){
                    (framework: Framework) in
                    FrameworkDetailView(framework: framework)
                }
            
            
        }
        
    }
}


//#Preview {
//    FrameworkGridView()
//}


