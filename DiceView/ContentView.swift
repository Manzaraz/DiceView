//
//  ContentView.swift
//  DiceView
//
//  Created by Christian Manzaraz on 26/04/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var numberOfDice: Int = 1
    
    var body: some View {
        VStack {
            Text("Dice Roller")
                .font(.largeTitle
                    .lowercaseSmallCaps()
                    .bold()
            )
            
            HStack {
                ForEach(1...numberOfDice, id: \.self) { _ in
                    DiceView()
                }
            }
            
            HStack {
                Button("Remove Dice") {
                    numberOfDice -= 1
                }
                .disabled(numberOfDice == 1)
                
                Button("Add Dice") {
                    numberOfDice += 1
                }
                .disabled(numberOfDice == 5)
            }
            .padding()
            .buttonStyle(.bordered)
        }
        .padding()
        
    }
}

#Preview {
    ContentView()
}
