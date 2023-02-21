//
//  Navigation.swift
//  week4_sound
//
//  Created by Joann Myung on 2/21/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink (destination: ContentView()) {
                    Text("ContentView")
                }
              
                // These view require environmentObject
//                NavigationLink (destination: Page9()) {
//                    Text("Page9-env")
//                }
//                NavigationLink (destination: Page10()) {
//                    Text("Page10-Memory")
//                }
                // SwiftUI limit: only 9 inline links
                // NavigationLink (destination: Pag11()) {
                //  Text("Page11-Timer")
                // }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



