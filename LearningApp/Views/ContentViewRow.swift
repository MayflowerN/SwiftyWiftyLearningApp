//
//  ContentViewRow.swift
//  LearningApp
//
//  Created by Ellie on 3/5/23.
//

import SwiftUI

struct ContentViewRow: View {
    
    @EnvironmentObject var model: ContentModel
    var index: Int
    
    var lesson: Lesson {
        if index < model.currentModule?.content.lessons.count ?? 0 {
            return model.currentModule!.content.lessons[index] 
        }
        else {
            return Lesson(id: 0, title: "", video: "", duration: "", explanation: "")
        }
    }
    var body: some View {
        
        
        //let lesson = model.currentModule!.content.lessons[index]
        
        //Lesson card
        ZStack (alignment: .leading) {
            
        Rectangle()
            .foregroundColor(.white)
            .cornerRadius(10)
            .shadow(radius: 5)
            .frame(height: 66)
        
            HStack (spacing: 30) {
            Text(String(index + 1))
                    .bold()
            
            VStack (alignment: .leading) {
                Text(lesson.title)
                    .bold()
                Text(lesson.duration)
            }
        }
        .padding()
    }
        .padding(.bottom, 5)
    }
}

struct ContentViewRow_Previews: PreviewProvider {
    static var previews: some View {
        ContentViewRow(index: 0)
            .environmentObject(ContentModel())
    }
}

