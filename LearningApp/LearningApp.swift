//
//  LearningAppApp.swift
//  LearningApp
//
//  Created by Ellie on 3/2/23.
//

import SwiftUI

@main
struct LearningApp: App {
    var contentModel = ContentModel()
    var body: some Scene {
        WindowGroup {
            Onboarding_1()
                            .environmentObject(ContentModel())
        }
    }
}
