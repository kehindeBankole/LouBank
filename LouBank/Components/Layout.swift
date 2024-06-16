//
//  Layout.swift
//  LouBank
//
//  Created by Kehinde Bankole on 14/06/2024.
//

import SwiftUI

struct Layout: View {
    @State private var currentTab = "home"
    
    init(){
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        VStack{
            TabView(selection: $currentTab){
                Home()
                    .tag("home")
                Shop()
                    .tag("shop")
                Card()
                    .tag("card")
                Chat()
                    .tag("chat")
                History()
                    .tag("history")
            }
            Spacer()
            AppTabs(currentTab: $currentTab)
        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    Layout()
}
