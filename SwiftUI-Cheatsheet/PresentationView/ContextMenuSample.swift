//
//  ContextMenuSample.swift
//  SwiftUI-Cheatsheet
//
//  Created by 村松龍之介 on 2019/10/26.
//  Copyright © 2019 村松龍之介. All rights reserved.
//

import SwiftUI

/// For iOS: 3D Touch or Long tap.
/// For macOS: Right click.
struct ContextMenuSample: View {
    var body: some View {
        Text("Context menu")
            .contextMenu {
                Button(action: {
                    // change country setting
                }) {
                    // Implisty HStack
                    Text("Choose Country")
                    Image(systemName: "globe")
                }
                
                Button(action: {
                    // enable geolocation
                }) {
                    Text("Detect Location")
                    Image(systemName: "location.circle")
                }
        }
    }
}

struct ContextMenu_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenuSample()
    }
}
