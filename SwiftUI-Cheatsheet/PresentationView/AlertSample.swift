//
//  AlertSample.swift
//  SwiftUI-Cheatsheet
//
//  Created by 村松龍之介 on 2019/10/26.
//  Copyright © 2019 村松龍之介. All rights reserved.
//

import SwiftUI

struct AlertSample: View {
    
    @State private var showingAlert1 = false
    @State private var showingAlert2 = false
    
    var body: some View {
        VStack {
            // 1st button
            Button(action: {
                self.showingAlert1 = true
            }) {
                Text("Show Alert 1")
            }
            .alert(isPresented: $showingAlert1) {
                Alert(
                    title: Text("Confirm?"),
                    primaryButton: .default(Text("OK")) {
                        print("default pushed")
                    },
                    secondaryButton: .cancel()
                )
            }
            .padding()
            
            // 2nd button
            Button(action: {
                self.showingAlert2 = true
            }) {
                Text("Show Alert 2")
            }
            .alert(isPresented: $showingAlert2) {
                Alert(
                    title: Text("Are you sure you want to delete this?"),
                    message: Text("There is no undo"),
                    primaryButton: .destructive(Text("Delete")) {
                        print("Deleting...")
                    },
                    secondaryButton: .cancel()
                )
            }
        }
    }
}

struct Alert_Previews: PreviewProvider {
    static var previews: some View {
        AlertSample()
    }
}
