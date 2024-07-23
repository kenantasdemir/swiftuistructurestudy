//
//  FourthPage.swift
//  swiftuistructurestudy
//
//  Created by kenan on 22.07.2024.
//

import SwiftUI

struct FourthPage: View {
    
    var name = ""
    var age = 0
    var height = 0.0
    var isMarried = false
    var body: some View {
        Text("Fourth Page")
        Text("Name: \(name) Age: \(age) Height: \(height) isMarried: \(String(isMarried))")
    }
}

#Preview {
    FourthPage()
}
