//
//  ContentView.swift
//  Jeremy Stats
//
//  Created by Tomasz Pikula on 23/05/2024.
//

import SwiftUI

struct ContentView: View {
    
    @Environment (DataModel.self) var model
    
    var body: some View {
        TabView {
            PlayerInfoView()
                .tabItem {
                    VStack {
                        Image(systemName: "person.fill")
                        Text("Player")
                    }
                }
            TeamInfoView()
                .tabItem {
                    VStack {
                        Image(systemName: "person.3.fill")
                        Text("Team")
                    }
                }
        }
        .onAppear {
            //model.loadPlayerInfo()
        }
    }
}

#Preview {
    ContentView()
        .environment(DataModel())
}
