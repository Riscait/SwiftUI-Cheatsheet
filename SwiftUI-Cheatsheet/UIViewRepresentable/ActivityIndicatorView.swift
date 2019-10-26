//
//  ActivityIndicatorView.swift
//  SwiftUI-Cheatsheet
//
//  Created by 村松龍之介 on 2019/10/26.
//  Copyright © 2019 村松龍之介. All rights reserved.
//

import UIKit
import SwiftUI

struct ActivityIndicatorView: UIViewRepresentable {
    
    @Binding var isAnimating: Bool
    
    let style: UIActivityIndicatorView.Style
        
    func makeUIView(context: Context) -> UIActivityIndicatorView {
        return UIActivityIndicatorView(style: style)
    }
    
    func updateUIView(_ uiView: UIActivityIndicatorView, context: Context) {
        isAnimating ? uiView.startAnimating() : uiView.stopAnimating()
    }
}

struct ActivityIndicatorView_Previews: PreviewProvider {

    static var previews: some View {
        ActivityIndicatorView(isAnimating: .constant(true), style: .large)
    }
}
