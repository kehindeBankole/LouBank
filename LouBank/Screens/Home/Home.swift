//
//  Home.swift
//  LouBank
//
//  Created by Kehinde Bankole on 14/06/2024.
//

import SwiftUI

let visaData : [VisaCardModel] = [
    VisaCardModel(type: .salary, amount: "2230", last4: "6917"),
    VisaCardModel(type: .savings_account, amount: "2230", last4: "4552"),
    VisaCardModel(type: .pension, amount: "2230", last4: "5321")
]

let financeData : [FinanceCardModel] = [
    FinanceCardModel(icon: "star", text: "My bonuses", index: 0),
    FinanceCardModel(icon: "menucard", text: "My budget", index: 1),
    FinanceCardModel(icon: "chart.bar.doc.horizontal", text: "Finance analysis", index: 2)
]

struct Home: View {
    @State private var opacity : Double = 0
    
    var body: some View {
        ScrollView  {
            VStack(spacing : 30){
                HStack{
                    ZStack(alignment: .center){
                        Circle().fill(.accent).frame(width: 32 , height: 32)
                        
                        Image("profile-icon")
                            .resizable()
                            .frame(width: 32 , height: 32)
                            .scaledToFit()
                            .clipShape(Circle())
                  
                    }
                    Spacer()
                    Image("logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width : 72)
                    Spacer()
                    VStack{
                        
                    }
                    
                }
                HStack(alignment: .bottom){
                    VStack(alignment: .leading, spacing: 10){
                        Group{
                            Text("Your balance")
                            Text(8000, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                                .font(.sansBold(size: 25))
                        }.foregroundStyle(.white)
                    }
                    Spacer()
                    ZStack{
                        Circle().fill(.darkButtonBg)
                            .frame(width: 32 , height: 32)
                        Image(systemName: "magnifyingglass")
                            .foregroundStyle(.white)
                    }
                  
                }
                
        
                ScrollView(.horizontal , showsIndicators: false){
                        LazyHStack{
                            ForEach(visaData , id:\.id){ item in
                                VisaCard(cardData: item)
                            }
                        }.scrollTargetLayout()
                      
                        
                    }.scrollTargetBehavior(.viewAligned)
                   
                    
                VStack(alignment: .leading,  spacing: 10) {
                    Text("FINANCE")
                        .foregroundStyle(.white)
                        .font(.sansBold(size: 11))
                    ScrollView(.horizontal , showsIndicators: false){
                            LazyHStack{
                                ForEach(financeData , id:\.id){ item in
                                    FinaceCard(financeData: item)
                                }
                            }.scrollTargetLayout()
                          
                            
                        }.scrollTargetBehavior(.viewAligned)
                }
                
            }
            
            Spacer()
        }
        .padding(.leading)
        .background(Color.appBackground)
        .opacity(opacity)
        .onAppear{
            withAnimation{
                opacity = 1
            }
        }.onDisappear{
            withAnimation{
                opacity = 0
            }
        }
    }
}

#Preview {
    Home()
}
