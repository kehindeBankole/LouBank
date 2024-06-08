//
//  AppButton.swift
//  LouBank
//
//  Created by Kehinde Bankole on 07/06/2024.
//

import SwiftUI

enum ButtonType {
    case primary
    case dark
}

struct AppButton: View {
    let title: String
    let action: () -> Void
  
    
    var body: some View {
        Button(action: action){
            Text(title)
        }.buttonStyle(PrimaryButtonStyle())
    }
}

#Preview {
    AppButton(title: "Log in", action: {
        //do nothing
    } ).font(.sansMedium())
}
