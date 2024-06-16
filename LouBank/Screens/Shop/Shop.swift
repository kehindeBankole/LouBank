//
//  Shop.swift
//  LouBank
//
//  Created by Kehinde Bankole on 16/06/2024.
//

import SwiftUI

struct Shop: View {
    @State private var opacity : Double = 0
    
    var body: some View {
        VStack{
            Text("shoop")
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
    Shop()
}
