//
//  ActionSheetSample.swift
//  SwiftUI-Cheatsheet
//
//  Created by 村松龍之介 on 2019/10/26.
//  Copyright © 2019 村松龍之介. All rights reserved.
//

import SwiftUI

struct ActionSheetSample: View {

    @State private var showingSheet = false

    var body: some View {
        Button(action: {
            self.showingSheet = true
        }) {
            Text("Show Action Sheet")
        }
        .actionSheet(isPresented: $showingSheet) {
            .init(title: Text("Title"),
                  message: Text("Message"),
                  buttons: [
                    .default(Text("Default")) {
                        print("Default action")
                    },
                    .destructive(Text("Destructive")) {
                        print("Destructive action")
                    },
                    .cancel(Text("Cancel")) {
                        // Or simple cancel. `.cancel()`
                        print("Cancel action")
                    }
                ]
            )
        }
    }
}

struct ActionSheet_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheetSample()
    }
}
