//
//  ThirdPage.swift
//  swiftuistructurestudy
//
//  Created by kenan on 22.07.2024.
//

import SwiftUI

struct ThirdPage: View {
    
    @State private var isItOkayToRoutingToFourthPage = false
    @Environment(\.presentationMode) var pm
    
    var body: some View {
        NavigationStack{
            VStack(spacing:100){
                
                Button("Done"){
                    isItOkayToRoutingToFourthPage = true
                }
                
                Button("Back"){
                    pm.wrappedValue.dismiss()
                }
            }
        }.navigationTitle("Third Page")
            .sheet(isPresented: $isItOkayToRoutingToFourthPage){
                FourthPage(name: "Kenan",age: 24,height: 1.71,isMarried: false)
            }
            
            
    }
}

#Preview {
    ThirdPage()
}
