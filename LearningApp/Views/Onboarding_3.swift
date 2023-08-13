//
//  Onboarding_3.swift
//  LearningApp
//
//  Created by Ellie on 7/17/23.
//
import SwiftUI

struct Onboarding_3: View {
    @State private var selectedIndex: Int = 0
    let segments: [String]
    @State private var showOnboarding_4: Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                Text("How proficient are you with Swift?")
                    .font(.custom("SF Pro", size: 30).weight(.medium))
                    .foregroundColor(.black)
                    .frame(width: 308, alignment: .topLeading)
                
                Spacer()
                
                HStack(spacing: 0) {
                    ForEach(0..<segments.count, id: \.self) { index in
                        Button(action: {
                            selectedIndex = index
                        }) {
                            Text(segments[index])
                                .foregroundColor(selectedIndex == index ? .white : Color(red: 0.45, green: 0.38, blue: 0.95))
                                .fixedSize()
                                .padding(12)
                        }
                        .background(selectedIndex == index ? Color(red: 0.45, green: 0.38, blue: 0.95) : Color.white)
                        .cornerRadius(15)
                    }
                }
                .padding(.horizontal, 20)
                
                Text("Proficiency: \(segments[selectedIndex])")
                    .font(.headline)
                    .foregroundColor(Color(red: 0.45, green: 0.38, blue: 0.95))
                
                Spacer()
                
                HStack {
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 40, height: 14)
                        .background(Color(red: 0.45, green: 0.38, blue: 0.95))
                        .cornerRadius(10)
                        .padding(.leading, 27)
                    
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 40, height: 14)
                        .background(Color(red: 0.45, green: 0.38, blue: 0.95))
                        .cornerRadius(10)
                    
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 40, height: 14)
                        .background(Color(red: 0.93, green: 0.93, blue: 0.93))
                        .cornerRadius(10)
                    
                    Spacer()
                    
                    Button(action: {
                        withAnimation {
                            showOnboarding_4 = true
                        }
                    }) {
                        Image("rightarrow")
                            .frame(width: 57, height: 57)
                            .padding(.trailing, 27)
                    }
                    .buttonStyle(PlainButtonStyle())
                }
                
                NavigationLink("", destination: Onboarding_4(), isActive: $showOnboarding_4).hidden()
            }
            .navigationBarItems(trailing: Button(action: {
                withAnimation {
                    showOnboarding_4 = true
                }
            }) {
                Text("Skip")
                    .font(.custom("SF Pro", size: 14).weight(.medium))
                    .kerning(0.07)
                    .multilineTextAlignment(.trailing)
                    .foregroundColor(Color(red: 0.45, green: 0.38, blue: 0.95))
                    .frame(width: 128, height: 23.33333, alignment: .trailing)
            })
        
        }
        .navigationBarHidden(true)
        .navigationViewStyle(.stack)
    }
}



struct Onboarding_3_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding_3(segments: ["Beginner", "Intermediate", "Advanced", "Expert"])
    }
}
