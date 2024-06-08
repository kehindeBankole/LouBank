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
           Login()
        }
        .padding()
        .frame(maxHeight : .infinity)
        .frame(maxWidth : .infinity)
        .background(.appBackground)
  
    }
}

#Preview {
    ContentView()
}
