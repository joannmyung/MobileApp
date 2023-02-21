//
//  ContentView.swift
//  week4_sound
//
//  Created by Joann Myung on 2/21/23.
//

import SwiftUI
import AVKit

class SoundManager {
    
    static let instance = SoundManager()
    
    var player: AVAudioPlayer?
    enum SoundOption: String {
        case bird
        case seagulls
    }
    
    func playSound(sound: SoundOption) {
        
        guard let url = Bundle.main.url(forResource: sound.rawValue, withExtension: ".mp3") else { return }
                do{
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
        } catch let error {
        print("Error playing sound. \(error.localizedDescription)")
        }
    }
}

struct ContentView: View {
    
    var soundManager = SoundManager ()
    
    var body: some View {
        VStack(spacing: 40) {
            Button("Play Sound 1") {
                SoundManager.instance.playSound(sound: .bird)
                }
            Button("Stop") {
                print("Button Stop")
//                player?.stop()
            }
            Button("Play Sound 2") {
                SoundManager.instance.playSound(sound: .seagulls)
                }
            }
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
