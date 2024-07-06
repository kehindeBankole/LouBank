//
//  Finace.swift
//  LouBank
//
//  Created by Kehinde Bankole on 06/07/2024.
//

import SwiftUI

struct FinanceCardModel{
    var id = UUID()
    var icon : String
    var text : String
    var index : Int
}

var iconbg : [Int : LinearGradient] = [
    0 : .linearAccent,
    1 : .linearMint,
    2 : .linearPurple
]

struct FinaceCard: View {
    @State var financeData : FinanceCardModel
    var body: some View {
        VStack(alignment:.leading , spacing: 25){
            Image(systemName: financeData.icon)
                .background(RoundedRectangle(cornerRadius: 14).fill(iconbg[financeData.index]!).frame(width: 32 , height: 32))
      
            Text(financeData.text)
                .font(.sansMedium(size: 11))
                .foregroundStyle(.white)
      
        }
        
        .padding(.vertical , 20)
        .padding(.leading , 20)
        .padding(.trailing , 40)
        .background(
            .darkButtonBg
        )
        .clipShape(RoundedRectangle(cornerRadius: 30))

    }
}
