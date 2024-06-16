//
//  Chat.swift
//  LouBank
//
//  Created by Kehinde Bankole on 16/06/2024.
//

import SwiftUI

struct Chat: View {
    @State private var opacity : Double = 0
    
    var body: some View {
        VStack{
            Text("chat")
        }
        .opacity(opacity)
        .onAppear{
            withAnimation{
                opacity = 1
            }
        }
        .onDisappear{
            withAnimation{
                opacity = 0
            }
        }
    }
}

#Preview {
    Chat()
}
