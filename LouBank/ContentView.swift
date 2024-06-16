//
//  ContentView.swift
//  LouBank
//
//  Created by Kehinde Bankole on 05/06/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ZStack(alignment: .topTrailing){
                Rectangle().fill(LinearGradient.linearDark)
                    .frame(maxWidth : .infinity)
                    .frame(height: 150)
                Login()
            }
        }
        .frame(maxHeight : .infinity)
        .frame(maxWidth : .infinity)
  
    }
}

#Preview {
    ContentView()
}
