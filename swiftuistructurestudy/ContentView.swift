//
//  ContentView.swift
//  swiftuistructurestudy
//
//  Created by kenan on 22.07.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var counter = 0
    var body: some View {
        VStack {
           Text("Counter Value is :\(counter)")
            Button("Increase"){
                counter = counter + 1
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
