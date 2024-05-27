//
//  ContentView.swift
//  Jeremy Stats
//
//  Created by Tomasz Pikula on 23/05/2024.
//

import SwiftUI

struct ContentView: View {
    
    @State var players = [Player]()
    @State var jeremy = Player()
    @State var jeremyIndex = 0
    var dataService = DataService()
    
    
    var body: some View {
        VStack {
            Text(String(players.count))
            ForEach (players) {player in
                Text (String(player.jersey ?? 000 ))
            }
        }
        .padding()
        .onAppear(perform: {
            Task {
                await players = dataService.playersByTeam()
                jeremyIndex = players.firstIndex(where: {$0.id == 20002881}) ?? 0
                jeremy = players[jeremyIndex]
                print(jeremy)     
            }
        })
    }
}

#Preview {
    ContentView()
}
