//
//  XDismissButton.swift
//  FrameWorks
//
//  Created by Luka Macharia on 21/01/2025.
//

import SwiftUI

 struct XDismissButton: View {
     @Binding var isShowing: Bool
     var body: some View {
         HStack(){
             Spacer()
             Button{
                 isShowing = false
             }label: {
                 Image(systemName: "xmark")
                     .foregroundColor(Color(.label))
                     .imageScale(.large)
                     .frame(width: 44, height: 44)
             }
         }.padding()
     }
    
}
