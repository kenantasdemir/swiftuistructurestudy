//
//  TabviewStudy.swift
//  swiftuistructurestudy
//
//  Created by kenan on 23.07.2024.
//

import SwiftUI

struct TabviewStudy: View {
    
    init(){
        let appearance = UITabBarAppearance()
        appearance.backgroundColor = .systemIndigo
        
        changeColor(itemAppearance: appearance.stackedLayoutAppearance)
        changeColor(itemAppearance: appearance.compactInlineLayoutAppearance)
        changeColor(itemAppearance: appearance.inlineLayoutAppearance)
        
        UITabBar.appearance().standardAppearance = appearance
        UITabBar.appearance().scrollEdgeAppearance = appearance
    }
    
    func changeColor(itemAppearance:UITabBarItemAppearance){
        itemAppearance.selected.iconColor = .systemOrange
        itemAppearance.selected.titleTextAttributes = [.foregroundColor:UIColor.systemOrange]
        
        itemAppearance.normal.iconColor = .white
        itemAppearance.normal.titleTextAttributes = [.foregroundColor:UIColor.white]
    }
    
    var body: some View {
        NavigationStack{
            TabView{
                HomePage().tabItem {
                    Label("Main",systemImage: "homekit")
                }
                
                SettingsPage().tabItem {
                    Label("Settings",systemImage: "gear")
                }
            }.navigationTitle("Tab view Study")
        }
    }
}

#Preview {
    TabviewStudy()
}
