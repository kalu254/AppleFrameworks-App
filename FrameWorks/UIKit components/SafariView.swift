//
//  PhotoPicker.swift
//  FrameWorks
//
//  Created by Luka Macharia on 21/01/2025.
//


import SwiftUI
import SafariServices

struct SafariView: UIViewControllerRepresentable {
    let url : URL
    func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) ->
    SFSafariViewController{
        SFSafariViewController(url: url)
    }
    
    
    func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<SafariView>) {
        
    }
    
    
}
