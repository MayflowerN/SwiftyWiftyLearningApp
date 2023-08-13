//
//  Onboarding_1.swift
//  LearningApp
//
//  Created by Ellie on 7/16/23.
//

import SwiftUI

struct Onboarding_1: View {
    @State var showOnboarding_2: Bool = false
    
    var body: some View {
        NavigationView {
            ZStack {
                
                LinearGradient(
                    stops: [
                        Gradient.Stop(color: Color(red: 0.31, green: 0.46, blue: 0.99), location: 0.05),
                        Gradient.Stop(color: Color(red: 0.91, green: 0.33, blue: 0.91), location: 1.00),
                    ],
                    startPoint: UnitPoint(x: 0.5, y: -0.08),
                    endPoint: UnitPoint(x: 0.5, y: 1.03)
                )
                .edgesIgnoringSafeArea(.all)
                
                
                .background(
                    LinearGradient(
                        stops: [
                            Gradient.Stop(color: Color(red: 0, green: 0.01, blue: 0.08), location: 0.00),
                            Gradient.Stop(color: Color(red: 0.02, green: 0.01, blue: 0.11), location: 1.00),
                        ],
                        startPoint: UnitPoint(x: 0.5, y: 0),
                        endPoint: UnitPoint(x: 0.5, y: 1)
                    )
                )
                
                .edgesIgnoringSafeArea(.all)
                
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 418, height: 450)
                    .background(
                        LinearGradient(
                            stops: [
                                Gradient.Stop(color: Color(red: 0.4, green: 0.38, blue: 0.95), location: 0.00),
                                Gradient.Stop(color: Color(red: 0.57, green: 0.41, blue: 0.95).opacity(0.1), location: 1.00),
                            ],
                            startPoint: UnitPoint(x: 0.5, y: 0),
                            endPoint: UnitPoint(x: 0.5, y: 0.5)
                        )
                    )
                    .cornerRadius(450)
                VStack {
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 348, height: 348)
                        .background(
                            LinearGradient(
                                stops: [
                                    Gradient.Stop(color: Color(red: 0.4, green: 0.38, blue: 0.95), location: 0.00),
                                    Gradient.Stop(color: Color(red: 0.65, green: 0.39, blue: 0.95).opacity(0.1), location: 1.00),
                                ],
                                startPoint: UnitPoint(x: 0.5, y: 0),
                                endPoint: UnitPoint(x: 0.5, y: 0.82)
                            )
                        )
                        .cornerRadius(348)
                    
                }
                VStack {
                    Spacer()
                    Image("codelogo")
                        .frame(width: 68, height: 93.33333)
                    Text("Swift Academy")
                        .font(
                            Font.custom("SF Pro Display", size: 60)
                                .weight(.bold)
                        )
                        .multilineTextAlignment(.center)
                        .foregroundColor(.white)
                        .padding()
                    
                    Text("Unlock the Power of Swift: Learn, Code, Succeed!")
                        .font(Font.custom("SF Pro Display", size: 20))
                        .multilineTextAlignment(.center)
                        .foregroundColor(.white)
                        .frame(width: 259, alignment: .top)
                    
                    Spacer()
                    
                    NavigationLink(destination: Onboarding_2(), isActive: $showOnboarding_2) {
                        Text("Get Started")
                            .font(
                                Font.custom("SF Pro Display", size: 20)
                                    .weight(.semibold)
                            )
                            .multilineTextAlignment(.center)
                            .foregroundColor(.white)
                    }
                    .buttonStyle(PlainButtonStyle())
                    .padding(.horizontal, 30)
                    .padding(.vertical, 20)
                    .frame(width: 240, alignment: .center)
                    .background(Color(red: 0.97, green: 0.98, blue: 1).opacity(0.1))
                    .cornerRadius(30)
                    
                }
                .buttonStyle(PlainButtonStyle())
            }
        }
        .navigationBarHidden(true)
        .navigationViewStyle(.stack)
    }
}

struct Onboarding_1_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding_1()
    }
}
