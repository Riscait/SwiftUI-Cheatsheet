//
//  ActivityViewController.swift
//  SwiftUI-Cheatsheet
//
//  Created by 村松龍之介 on 2019/10/26.
//  Copyright © 2019 村松龍之介. All rights reserved.
//

import UIKit
import SwiftUI

/// e.g. Share with AirDrop, iMessage...
struct ActivityViewController: UIViewControllerRepresentable {
    
    var activityItems: [Any]
    var applicationActivities: [UIActivity]? = nil
    
    func makeUIViewController(context: Context) -> UIActivityViewController {
        UIActivityViewController(
            activityItems: activityItems,
            applicationActivities: applicationActivities
        )
    }
    
    func updateUIViewController(_ uiViewController: UIActivityViewController, context: Context) {
        // do something.
    }
}

struct ActivityViewController_Previews: PreviewProvider {
    static var previews: some View {
        ActivityViewController(activityItems: [
            "Apple.com",
            URL(string: "https://apple.com")!,
        ])
    }
}
