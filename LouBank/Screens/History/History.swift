//
//  History.swift
//  LouBank
//
//  Created by Kehinde Bankole on 16/06/2024.
//

import SwiftUI

struct History: View {
    @State private var opacity : Double = 0
    
    var body: some View {
        VStack{
            Text("history")
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
    History()
}
