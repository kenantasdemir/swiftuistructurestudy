//
//  ToolbarStudy.swift
//  swiftuistructurestudy
//
//  Created by kenan on 23.07.2024.
//

import SwiftUI

struct ToolbarStudy: View {
    
    init(){
        let appearance = UINavigationBarAppearance()
        appearance.backgroundColor = .red
        appearance.largeTitleTextAttributes = [.foregroundColor:UIColor.white]
        
        
        UINavigationBar.appearance().standardAppearance = appearance
        UINavigationBar.appearance().compactAppearance = appearance
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
    }
    
    var body: some View {
        NavigationStack{
            VStack{
                Text("Hello")
            }.navigationTitle("Welcome Page")
                .toolbar{
                    ToolbarItem(placement: .navigationBarLeading){
                        Button("Back"){
                            print("back pressed")
                        }.foregroundColor(.white)
                    }
                    
                    ToolbarItemGroup(placement: .navigationBarTrailing){
                        Button("Settings"){
                           print("Clicked")
                        }.foregroundColor(.white)
                        
                        Button{
                            print("Gear clicked")
                        }label: {
                            Image(systemName: "gear")
                        }.foregroundColor(.white)
                    }
                }
        }
    }
}

#Preview {
    ToolbarStudy()
}
