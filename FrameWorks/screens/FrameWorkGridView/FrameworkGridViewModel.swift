//
//  FrameworkGridViewModel.swift
//  FrameWorks
//
//  Created by Luka Macharia on 21/01/2025.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    var selectecFramework: Framework?{
        didSet {
            isShowingDetailView = true
        }
    }
    
    @Published var isShowingDetailView: Bool = false
    
}
