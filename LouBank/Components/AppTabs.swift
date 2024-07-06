//
//  AppTabs.swift
//  LouBank
//
//  Created by Kehinde Bankole on 14/06/2024.
//

import SwiftUI

enum TabsEnum : String , CaseIterable {
    case home = "home"
    case shop = "shop"
    case card = "card"
    case chat = "chat"
    case history = "history"
}

let TabsDictionary:[TabsEnum.RawValue : String] = [
    "home":"home-icon",
    "shop":"shop-icon",
    "card" : "card-icon",
    "chat" : "chat-icon",
    "history" : "history-icon"
]

struct AppTabs: View {
    @Binding var currentTab : String
    
    var body: some View {
        
        
        ZStack(alignment: .bottomLeading){
            Image("tab-gradient")
                .resizable()
                .frame(height: 200)
            HStack{

                ForEach(TabsEnum.allCases , id:\.self){item in
                    Spacer()
                    Button(action: {
                        withAnimation{
                            currentTab = item.rawValue
                        }
                    }){
                        Image(TabsDictionary[item.rawValue] ?? "")
                            .renderingMode(.template)
                            .font(.title)
                            .foregroundStyle( currentTab == item.rawValue ? Color.accent : .white)
                    }
                    Spacer()
                }
            } .background(
                UnevenRoundedRectangle(cornerRadii: .init(topLeading: 25, topTrailing: 25))
                    .fill(Color.appBackground)
                    .padding(.top , -30)
                    .edgesIgnoringSafeArea(.all)
                
                
            )
        
     
        }.background(.appBackground)
//        .background(
//            UnevenRoundedRectangle(cornerRadii: .init(topLeading: 25, topTrailing: 25))
//                .fill(Color.appBackground)
//                .padding(.top , -30)
//                .edgesIgnoringSafeArea(.all)
//            
//            
//        )
        .edgesIgnoringSafeArea(.all)
        
        
    }
}

#Preview {
    AppTabs(currentTab: .constant("home"))
}
