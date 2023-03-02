//
//  LearningAppApp.swift
//  LearningApp
//
//  Created by Ellie on 3/2/23.
//

import SwiftUI

@main
struct LearningApp: App {
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(ContentModel())
        }
    }
}
