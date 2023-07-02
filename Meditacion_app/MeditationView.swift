//
//  MeditationView.swift
//  Meditation_app
//
//  Created by teona nemsadze on 30.06.23.
//

import SwiftUI

struct MeditationView: View {
    @StateObject var meditationVM: MeditationViewModel
    @State private var showPlayer = false
    
    
    var body: some View {
        VStack (spacing: 0) {
            Image(meditationVM.meditation.image)
                .resizable()
                .scaledToFill()
                .frame(height: UIScreen.main.bounds.height / 3 )
            
            ZStack {
                Color("DarkBlue")
            
            
            VStack(alignment: .leading, spacing: 24){
                VStack(alignment: .leading, spacing: 8) {
                    Text("Music")
                    Text(DateComponentsFormatter.abbreviated.string(from:  meditationVM.meditation.duration) ?? meditationVM.meditation.duration.formatted() + "S")
                        
                }
                .font(.subheadline)
                .textCase(.uppercase)
                .opacity(0.7)
                Text(meditationVM.meditation.title)
                    .font(.title)
                
                Button {
                    showPlayer = true
                } label: {
                    Label("Play", systemImage: "play.fill")
                        .font(.headline)
                        .foregroundColor(.black)
                        .padding(.vertical, 10)
                        .frame(maxWidth: .infinity)
                        .background(.white)
                        .cornerRadius(20)
                }
                
                Text(meditationVM.meditation.description)
                    .font(.title3)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.leading)
                    .background(Color.black.opacity(0.5))
                    .shadow(radius: 2, x: 12, y: 42)
                   
                Spacer()
            }
            .foregroundColor(.white)
           
            .padding(20)
        }
        .frame(height: UIScreen.main.bounds.height * 2 / 3 )
       }
        .ignoresSafeArea()
        .fullScreenCover(isPresented: $showPlayer) {
            PlayerView(meditationVM: meditationVM)
        }
    }
}
 
struct MeditationView_Previews: PreviewProvider {
    static let meditationVM = MeditationViewModel(meditation: Meditation.data)
    static var previews: some View {
        MeditationView(meditationVM: meditationVM)
            .environmentObject(AudioManager())
    } 
}









