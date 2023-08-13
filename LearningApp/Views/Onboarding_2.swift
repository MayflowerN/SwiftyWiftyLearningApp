//
//  Onboarding_2.swift
//  LearningApp
//
//  Created by Ellie on 7/16/23.
//

import SwiftUI

struct Onboarding_2: View {
        @State private var isLearnBasicsSelected = false
        @State private var isBuildAppSelected = false
        @State private var isLandJobSelected = false
        @State private var isLearnSkillSelected = false
    
    @State var showOnboarding_3: Bool = false
    
    var body: some View {
        NavigationView {
        VStack {
            Spacer()
            Text("What are you hoping to achieve with Swift Academy?")
                .font(
                    Font.custom("SF Pro", size: 30)
                        .weight(.medium)
                )
                .foregroundColor(.black)
                .frame(width: 308, alignment: .topLeading)
                .padding(20)
            Spacer()
            
            
            Button(action: {
                isLearnBasicsSelected.toggle()
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
                        if isLearnBasicsSelected {
                                                        Image("checkmark")
                                                            .padding(.leading, 10) // Adjust the padding here
                                                    }
                                                    Text("Learn the basics")
                                                        .font(.headline)
                                                        .foregroundColor(.black)
                                                        .padding(.trailing, isLearnBasicsSelected ? 10 : 0) // Adjust the padding here
                                                    Spacer()
                        }
                                           
                                       }
                                   }
                                   .buttonStyle(PlainButtonStyle())
                            
                            
            VStack {
                Button(action: {
                    isBuildAppSelected.toggle()
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
                            if isBuildAppSelected {
                                Image("checkmark")
                                    .padding(.leading, 10)
                            }
                            Text("Build my first app")
                                .font(.headline)
                                .foregroundColor(.black)
                                .padding(.trailing, isBuildAppSelected ? 10 : 0)
                            Spacer()
                        }
                    }
                }
                .buttonStyle(PlainButtonStyle())
                
                VStack {
                    Button(action: {
                        isLandJobSelected.toggle()
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
                                if isLandJobSelected {
                                    Image("checkmark")
                                        .padding(.leading, 10)
                                }
                                Text("Land a job")
                                    .font(.headline)
                                    .foregroundColor(.black)
                                    .padding(.trailing, isLandJobSelected ? 10 : 0)
                                Spacer()
                            }
                        }
                    }
                    .buttonStyle(PlainButtonStyle())
                    
                    VStack {
                        Button(action: {
                            isLearnSkillSelected.toggle()
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
                                    if isLearnSkillSelected {
                                        Image("checkmark")
                                            .padding(.leading, 10)
                                    }
                                    Text("Learn a new skill")
                                        .font(.headline)
                                        .foregroundColor(.black)
                                        .padding(.trailing, isLearnSkillSelected ? 10 : 0)
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
                                    .background(Color(red: 0.93, green: 0.93, blue: 0.93))
                                    .cornerRadius(10)
                                Rectangle()
                                    .foregroundColor(.clear)
                                    .frame(width: 40, height: 14)
                                    .background(Color(red: 0.93, green: 0.93, blue: 0.93))
                                    .cornerRadius(10)
                                
                                Spacer()
                                
                                NavigationLink(destination: Onboarding_3(segments: ["Beginner", "Intermediate", "Advanced", "Expert"]), isActive: $showOnboarding_3) {
                                    Image("rightarrow")
                                        .frame(width: 57, height: 57)
                                        .padding(.trailing, 15)
                                }
                                .buttonStyle(PlainButtonStyle())
        
                            }
                        }
                        .navigationBarItems(trailing: Button(action: {
                            withAnimation {
                                showOnboarding_3 = true
                            }
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
                        })
                      
                       
                        
                    }
                }
            }
                                                                }
     
            
                    
                                                            }
        .navigationBarHidden(true)
        .navigationViewStyle(.stack)
                                                     
              
            
        }
    }


struct Onboarding_2_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding_2()
    }
}
