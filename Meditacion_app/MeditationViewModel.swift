//
//  MeditaciotViewModel.swift
//  Meditaciot_app
//
//  Created by teona nemsadze on 30.06.23.
//

import Foundation

final class MeditationViewModel: ObservableObject {
    private(set) var meditation: Meditation
    
    init(meditation: Meditation) {
        self.meditation = meditation
    }
}


struct Meditation {
    let id = UUID()
    let title: String
    let description: String
    let duration: TimeInterval
    let track: String
    let image: String
    
    
    static let data = Meditation(title: "1 minute Relaxing Meditation", description: "Meditation music is music performed to aid in the practice of meditation. It can have a specific religious content, but also more recently has been associated with modern composers who use meditation techniques in their process of composition, or who compose such music with no particular religious group as a focus. The concept also includes music performed as an act of meditation.", duration: 70, track: "meditation", image: "meditation")
    
}
