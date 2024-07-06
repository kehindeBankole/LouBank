//
//  VisaCard.swift
//  LouBank
//
//  Created by Kehinde Bankole on 06/07/2024.
//

import SwiftUI

enum VisaCardType : String {
    case salary = "Salary";
    case savings_account = "Savings account";
    case pension = "Pension"
}

struct VisaCardModel{
    var id = UUID()
    var type : VisaCardType
    var amount : String
    var last4 : String
    
}

var bg : [VisaCardType : LinearGradient] = [
    .savings_account : .linearAccent,
    .salary : .linearMint,
    .pension : .linearPurple
]

struct VisaCard: View {
    @State var cardData : VisaCardModel
    var body: some View {
        VStack(alignment:.leading , spacing: 25){
            Image("visa")
                .resizable()
                .frame(width: 40 , height: 20)
            VStack(alignment: .leading){
                Text(cardData.type.rawValue)
                    .font(.sansMedium(size: 11))
                Text(Int(cardData.amount)! , format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                    .font(.sansBold(size: 17))
            }
            Text("**\(cardData.last4)")
                .font(.sansRegular(size: 11))
        }
        
        .padding(.vertical)
        .padding(.leading )
        .padding(.trailing , 62)
        .background(
            bg[cardData.type]
        )
        .clipShape(RoundedRectangle(cornerRadius: 30))
        
    }
}

#Preview {
    VisaCard(cardData: .init(type: .salary, amount: "4500", last4: "1234"))
}
