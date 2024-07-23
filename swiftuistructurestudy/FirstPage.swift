//
//  FirstPage.swift
//  swiftuistructurestudy
//
//  Created by kenan on 22.07.2024.
//

import SwiftUI

struct FirstPage: View {
    
    init(){
        print("init WORKED")
    }
    var body: some View {
        NavigationStack{
            VStack{
                NavigationLink(destination: SecondPage()){
                    Text("Go to Second Page")
                }
                
            }.navigationTitle("First Page")
                .navigationBarTitleDisplayMode(.inline)
        }.onAppear{
            print("onAppear WORKED")
        }
        .onDisappear{
            print("onDisappear WORKED")
        }
    }
}

#Preview {
    FirstPage()
}
