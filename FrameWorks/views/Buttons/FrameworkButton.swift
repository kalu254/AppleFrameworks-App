//
//  FrameworkButton.swift
//  FrameWorks
//
//  Created by Luka Macharia on 21/01/2025.
//

import SwiftUI

struct FrameworkButton: View {
    let title: String
    var body: some View {
        Text(title).font(.title2).frame(width: 200, height: 50).foregroundColor(.white).background(Color.red).cornerRadius(10)
    }
}

#Preview {
    FrameworkButton(title: "Button")
}
