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
                        .foregroundStyle( currentTab == item.rawValue ? .red : .white)
                }
                Spacer()
            }
        }
        .background(
            UnevenRoundedRectangle(cornerRadii: .init(topLeading: 25, topTrailing: 25))
                .fill(.black)
                .padding(.top , -30)
                .edgesIgnoringSafeArea(.all)
            
            
        )
        .edgesIgnoringSafeArea(.all)
        
    }
}

#Preview {
    VStack{
        Spacer()
        //AppTabs(currentTab: Binding(.constant(.home)))
    }
}
