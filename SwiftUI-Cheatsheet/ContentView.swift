//
//  ContentView.swift
//  SwiftUI-Cheatsheet
//
//  Created by 村松龍之介 on 2019/10/26.
//  Copyright © 2019 村松龍之介. All rights reserved.
//

import SwiftUI

struct ContentView: View {
        
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: SheetSample()) {
                    Text("Sheet")
                }
                NavigationLink(destination: AlertSample()) {
                    Text("Alert")
                }
                NavigationLink(destination: ActionSheetSample()) {
                    Text("ActionSheet")
                }
                NavigationLink(destination: ContextMenuSample()) {
                    Text("ContextMenu")
                }
            }
            .navigationBarTitle("SwiftUI-Cheatsheet")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
