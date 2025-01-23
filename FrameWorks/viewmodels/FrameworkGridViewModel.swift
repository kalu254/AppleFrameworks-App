//
//  FrameworkGridViewModel.swift
//  FrameWorks
//
//  Created by Luka Macharia on 21/01/2025.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {

    
    @Published var isShowingDetailView: Bool = false
    
    let columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    
}
