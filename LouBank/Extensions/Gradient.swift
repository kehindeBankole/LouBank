//
//  Gradient.swift
//  LouBank
//
//  Created by Kehinde Bankole on 05/06/2024.
//

import Foundation
import SwiftUI

extension LinearGradient {
    static let linearDark = LinearGradient(
        gradient: Gradient(colors: [Color.linearDark100 , Color.linearDark0]),
        startPoint: .top,
        endPoint: .bottom
    )


    static let linearMint = LinearGradient(
        gradient: Gradient(colors: [Color.linearMint0, Color.linearMint100]),
        startPoint: .top,
        endPoint: .bottom
    )
    
    
    static let linearAccent = LinearGradient(
        gradient: Gradient(colors: [Color.linearAccent0, Color.linearAccent100]),
        startPoint: .top,
        endPoint: .bottom
    )
    
    static let linearPurple = LinearGradient(
        gradient: Gradient(colors: [Color.linearPurple0, Color.linearPurple100]),
        startPoint: .top,
        endPoint: .bottom
    )
    
    
}


#Preview {
    RoundedRectangle(cornerRadius: 25)
        .fill(LinearGradient.linearDark)
           .frame(width: 200, height: 100)
           .padding()
}

