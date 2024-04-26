//
//  ContentView.swift
//  DiceView
//
//  Created by Christian Manzaraz on 26/04/2024.
//

import SwiftUI

struct ContentView: View {
    var numberOfPips: Int = 1
    
    var body: some View {
        VStack {
            Image(systemName: "die.face.\(numberOfPips)")
                .resizable()
                .frame(width: 100, height: 100)
                
          
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
