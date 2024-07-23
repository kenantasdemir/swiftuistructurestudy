//
//  SecondPage.swift
//  swiftuistructurestudy
//
//  Created by kenan on 22.07.2024.
//

import SwiftUI

struct SecondPage: View {
    @State private var isOkayToRouting = false
   
    
    var body: some View {
        NavigationStack{
            VStack{
                Button("Go to Third Page"){
                    isOkayToRouting = true
                }.navigationTitle("Second Page")
                    .navigationDestination(isPresented: $isOkayToRouting){
                        ThirdPage()
                    }
            }
        }
    }
}

#Preview {
    SecondPage()
}
