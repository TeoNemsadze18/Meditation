//
//  Meditation_appApp.swift
//  Meditation_app
//
//  Created by teona nemsadze on 30.06.23.
//

import SwiftUI

@main
struct Meditation_appApp: App {
    @StateObject var audioManager = AudioManager()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(audioManager)
        }
    }
}
