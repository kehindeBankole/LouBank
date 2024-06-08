//
//  ButtonStyle.swift
//  LouBank
//
//  Created by Kehinde Bankole on 08/06/2024.
//

import Foundation
import  SwiftUI

struct PrimaryButtonStyle:ButtonStyle{

    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .frame(maxWidth:.infinity)
            .padding(20)
            .foregroundStyle(.text)
            .background(LinearGradient.linearAccent)
            .clipShape(RoundedRectangle(cornerRadius: 38))
            .scaleEffect(configuration.isPressed ? 0.9 : 1)
            .animation(.spring(response: 0.3, dampingFraction: 0.5, blendDuration: 0.3), value: configuration.isPressed)
      
    }
}


struct DarkButtonStyle:ButtonStyle{
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .frame(maxWidth:.infinity)
            .padding(20)
            .foregroundStyle(.white)
            .background(.darkButtonBg)
            .clipShape(RoundedRectangle(cornerRadius: 38))
            .scaleEffect(configuration.isPressed ? 0.9 : 1)
            .animation(.spring(response: 0.3, dampingFraction: 0.5, blendDuration: 0.3), value: configuration.isPressed)
      
    }
}
