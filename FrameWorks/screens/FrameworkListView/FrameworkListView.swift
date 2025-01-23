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
                    NavigationLink(destination:  FrameworkDetailView(framework: framework ))
                    {
                        
                        FrameWorkTitleView(isGridView: false, framework: framework)
                
                        }
                    }
                }
                
            }.navigationTitle("🍎 Frameworks")
            
            
            
    }
        
}

#Preview {
    FrameworkListView()
}
