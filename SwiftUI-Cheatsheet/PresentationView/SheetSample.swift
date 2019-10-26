//
//  SheetSample.swift
//  SwiftUI-Cheatsheet
//
//  Created by 村松龍之介 on 2019/10/26.
//  Copyright © 2019 村松龍之介. All rights reserved.
//

import SwiftUI

struct SheetSample: View {
    
    @State private var showingDetail = false
    
    var body: some View {
        Button(action: {
            self.showingDetail.toggle()
        }) {
            Text("Show Detail")
        }.sheet(isPresented: $showingDetail) {
            // If you use Binding, you must pass isPresented.
            SheetDetailSample(isPresented: self.$showingDetail)
        }
    }
}

struct SheetDetailSample: View {
    
    @Environment(\.presentationMode) var presentationMode

    @Binding var isPresented: Bool
    
    var body: some View {
        
        VStack {
            // Pattern 1. Use @Environment
            Button(action: {
                self.presentationMode.wrappedValue.dismiss()
            }) {
                Text("Dismiss this view by Environment(\\.presentationMode)")
            }
            .padding()
            .background(Color(UIColor.systemGray5))
            .cornerRadius(4)
            .padding()
            
            // Pattern 2. Use @Binding
            Button(action: {
                self.isPresented = false
            }) {
                Text("Dismiss this view by @Binding state")
            }
            .padding()
            .background(Color(UIColor.systemGray5))
            .cornerRadius(4)
        }
    }
}

struct SheetSample_Previews: PreviewProvider {
    static var previews: some View {
        SheetSample()
    }
}
