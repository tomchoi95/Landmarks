//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by 최범수 on 2025-01-18.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @State private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
