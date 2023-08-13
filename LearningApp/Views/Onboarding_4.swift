//
//  Onboarding_4.swift
//  LearningApp
//
//  Created by Ellie on 7/17/23.
//

import SwiftUI

struct Onboarding_4: View {
    @State private var isBusyScheduleSelected = false
    @State private var isOverwhelmedSelected = false
    @State private var isUnmotivatedSelected = false
    @State private var isNoGuidanceSelected = false
    
    @State private var showHomeView = false
    
    @EnvironmentObject var contentModel: ContentModel

@State var showOnboarding_3: Bool = false

var body: some View {
    NavigationView {
    VStack {
        Spacer()
        Text("What’s holding you back from reaching your goals?")
            .font(
                Font.custom("SF Pro", size: 30)
                    .weight(.medium)
            )
            .foregroundColor(.black)
            .frame(width: 308, alignment: .topLeading)
            .padding(20)
        Spacer()
        
        
        Button(action: {
            isBusyScheduleSelected.toggle()
        }) {
            ZStack {
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 324, height: 56)
                    .background(.white)
                    .cornerRadius(30)
                    .overlay(
                        RoundedRectangle(cornerRadius: 30)
                            .inset(by: 1.5)
                            .stroke(Color(red: 0.45, green: 0.38, blue: 0.95), lineWidth: 3)
                    )
                HStack {
                    Spacer()
                    
                    if isBusyScheduleSelected {
                        Image("checkmark")
                            .padding(.leading, 10)
                    }
                    Text("Busy schedule")
                        .font(.headline)
                        .foregroundColor(.black)
                        .padding(.trailing, isBusyScheduleSelected ? 10 : 0)
                        Spacer()
                    }
                
                                   }
                               }
                               .buttonStyle(PlainButtonStyle())
                        
                        
                        VStack {
                            Button(action: {
                                isOverwhelmedSelected.toggle()
                            }) {
                                ZStack {
                                    Rectangle()
                                        .foregroundColor(.clear)
                                        .frame(width: 324, height: 56)
                                        .background(.white)
                                        .cornerRadius(30)
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 30)
                                                .inset(by: 1.5)
                                                .stroke(Color(red: 0.45, green: 0.38, blue: 0.95), lineWidth: 3)
                                        )
                                    HStack {
                                        Spacer()
                                        if isOverwhelmedSelected {
                                            Image("checkmark")
                                                .padding(.leading, 10)
                                        }
                                        Text("Feeling overwhelmed")
                                            .font(.headline)
                                            .foregroundColor(.black)
                                            .padding(.trailing, isOverwhelmedSelected ? 10 : 0)
                                            Spacer()
                                                           }
                                                       }
                                                   }
                                                   .buttonStyle(PlainButtonStyle())
                                            
                            VStack {
                                Button(action: {
                                    isUnmotivatedSelected.toggle()
                                }) {
                                    ZStack {
                                        Rectangle()
                                            .foregroundColor(.clear)
                                            .frame(width: 324, height: 56)
                                            .background(.white)
                                            .cornerRadius(30)
                                            .overlay(
                                                RoundedRectangle(cornerRadius: 30)
                                                    .inset(by: 1.5)
                                                    .stroke(Color(red: 0.45, green: 0.38, blue: 0.95), lineWidth: 3)
                                            )
                                        HStack {
                                            Spacer()
                                            if isUnmotivatedSelected {
                                                Image("checkmark")
                                                    .padding(.leading, 10)
                                            }
                                            Text("Feeling unmotivated")
                                                .font(.headline)
                                                .foregroundColor(.black)
                                                .padding(.trailing, isUnmotivatedSelected ? 10 : 0)
                                            Spacer()
                                           
                                        }
                                    }
                                }
                                .buttonStyle(PlainButtonStyle())
                                
                                VStack {
                                    Button(action: {
                                        isNoGuidanceSelected.toggle()
                                    }) {
                                        ZStack {
                                            Rectangle()
                                                .foregroundColor(.clear)
                                                .frame(width: 324, height: 56)
                                                .background(.white)
                                                .cornerRadius(30)
                                                .overlay(
                                                    RoundedRectangle(cornerRadius: 30)
                                                        .inset(by: 1.5)
                                                        .stroke(Color(red: 0.45, green: 0.38, blue: 0.95), lineWidth: 3)
                                                )
                                            HStack {
                                                Spacer()
                                                if isNoGuidanceSelected {
                                                    Image("checkmark")
                                                        .padding(.leading, 10)
                                                }
                                                Text("No Guidance")
                                                    .font(.headline)
                                                    .foregroundColor(.black)
                                                    .padding(.trailing, isNoGuidanceSelected ? 10 : 0)
                                                Spacer()
                                            }
                                        }
                                    }
                                    .buttonStyle(PlainButtonStyle())
                                    
                                    Spacer()
                                    
                                    VStack {
                                        HStack {
                                            
                                            Rectangle()
                                                .foregroundColor(.clear)
                                                .frame(width: 40, height: 14)
                                                .background(Color(red: 0.45, green: 0.38, blue: 0.95))
                                                .cornerRadius(10)
                                                .padding(.leading, 15)
                                            Rectangle()
                                                .foregroundColor(.clear)
                                                .frame(width: 40, height: 14)
                                                .background(Color(red: 0.45, green: 0.38, blue: 0.95))
                                                .cornerRadius(10)
                                                
                                            Rectangle()
                                                .foregroundColor(.clear)
                                                .frame(width: 40, height: 14)
                                                .background(Color(red: 0.45, green: 0.38, blue: 0.95))
                                                .cornerRadius(10)
                                                
                                            
                                            Spacer()
                                            
                                            NavigationLink(destination: HomeView(), isActive: $showHomeView) {

                                                Image("rightarrow")
                                                    .frame(width: 57, height: 57)
                                                    .padding(.trailing, 15)
                                            }
                                            .buttonStyle(PlainButtonStyle())
                                                
                                            }
                                            
                                        }
                                    }
                                    .navigationBarItems(trailing:
                                                            Button(action: {
                                        showHomeView = true
                                    }) {
                                        Text("Skip")
                                            .font(
                                            Font.custom("SF Pro", size: 14)
                                            .weight(.medium)
                                            )
                                            .kerning(0.07)
                                            .multilineTextAlignment(.trailing)
                                            .foregroundColor(Color(red: 0.45, green: 0.38, blue: 0.95))
                                            .frame(width: 128, height: 23.33333, alignment: .trailing)
                                    }
                                        
                                    )
                                }
                            }
                                                            }
 
        
                
                                                        }
    .navigationBarHidden(true)
    .navigationViewStyle(.stack)
    }
}

struct Onboarding_4_Previews: PreviewProvider {
static var previews: some View {
    Onboarding_4()
}
}
