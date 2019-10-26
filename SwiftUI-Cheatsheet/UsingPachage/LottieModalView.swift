//
//  LottieModalView.swift
//  SwiftUI-Cheatsheet
//
//  Created by 村松龍之介 on 2019/10/26.
//  Copyright © 2019 村松龍之介. All rights reserved.
//

import SwiftUI

struct LottieModalView: View {
    
    let filename: String
    
    var blurStyle: UIBlurEffect.Style? = nil
    

    var body: some View {
        ZStack {
            BlurView(style: blurStyle ?? .extraLight)
            LottieView(filename: filename)
        }
        .frame(width: 360, height: 360)
        .cornerRadius(30)
        .shadow(radius: 30)
    }
}

struct LottieModalView_Previews: PreviewProvider {
    static var previews: some View {
        LottieModalView(filename: "TwitterHeart", blurStyle: .extraLight)
    }
}
