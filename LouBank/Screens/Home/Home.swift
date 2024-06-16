//
//  Home.swift
//  LouBank
//
//  Created by Kehinde Bankole on 14/06/2024.
//

import SwiftUI

struct Home: View {
    @State private var opacity : Double = 0
    
    var body: some View {
        VStack{
            Text("hoome")
        }
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
