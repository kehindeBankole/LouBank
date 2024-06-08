//
//  Login.swift
//  LouBank
//
//  Created by Kehinde Bankole on 08/06/2024.
//

import SwiftUI

struct Login: View {
    @State private var showPasscode = false
    @Namespace var namespace
    @State private var passCodeNumbers = ["1" , "2" , "3" , "4" , "5" , "6" , "7" , "8" , "9" , "", "0" , "X"]
    @State private var enteredValue = ["" , "" , "" , "" , ""]
    @State private var currentIndex = 0
    var columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        VStack{
            ZStack(alignment: .topTrailing){
                Rectangle().fill(LinearGradient.linearDark)
                    .frame(maxWidth : .infinity)
                    .frame(height: 150)
                HStack{
                    Spacer()
                    Image("logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width : 72)
                    Spacer()
                    Button(action: {
                        //do nothing
                    }){
                        Image(systemName: "ellipsis")
                            .foregroundStyle(.white)
                            .rotationEffect(.degrees(90))
                            .frame(width: 42 , height: 42)
                            .background(Circle().fill(LinearGradient.linearDark))
                        
                    }
                }
            }
            if(!showPasscode){
                VStack(spacing:20){
                    AppButton(title: "Log in", action: {
                        withAnimation{
                            showPasscode.toggle()
                        }
                    })
                    Button(action: {
                        
                    }, label: {
                        Text("Become a client of the bank")
                    }).buttonStyle(DarkButtonStyle())
                }.matchedGeometryEffect(id: "shape", in: namespace)
                
            }else{
                VStack(spacing:50){
                    VStack(spacing:15){
                        Text("Enter Passcode")
                            .font(.sansMedium(size: 18))
                            .foregroundStyle(.white)
                        HStack(spacing:10){
                            ForEach(enteredValue , id:\.self){ item in
                                if(item != ""){
                                    Text("\(item)")
                                        .foregroundStyle(.white)
                                        .font(.sansMedium(size: 18))
                                        .frame(width: 20 , height: 20)
                                    
                                }else{
                                    Circle()
                                        .fill(.darkButtonBg)
                                        .frame(width: 20 , height: 20)
                                }
                            }
                        }
                    }
                    LazyVGrid(columns: columns , spacing: 30){
                        ForEach(passCodeNumbers , id: \.self){item in
                            Button(action: {
                                if(item == "X"){
                                    print(item)
                                    if(currentIndex > 0){
                                        enteredValue[currentIndex-1] = ""
                                        currentIndex -= 1
                                    }
                                }else{
                                    if(currentIndex <= 4){
                                            enteredValue[currentIndex] = item
                                            currentIndex += 1
                                    }
                                    
                                }
                            }, label: {
                                if(item != ""){
                                    Text("\(item)")
                                        .font(.title)
                                        .frame(width: 75 , height: 75)
                                        .foregroundStyle(.white)
                                        .background(Circle().fill(.darkButtonBg))
                                }else{
                                    
                                }
                            })
                            
                        }
                    }.padding(.horizontal , 40)
                }
                .matchedGeometryEffect(id: "shape", in: namespace)
            }
            Spacer()
        }
        .frame(maxWidth : .infinity)
        .frame(maxHeight : .infinity)
        
    }
}

#Preview {
    Login()
        .background(.appBackground)
        .frame(maxHeight : .infinity)
        .frame(maxWidth : .infinity)
}
