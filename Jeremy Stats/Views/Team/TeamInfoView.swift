//
//  TeamInfoView.swift
//  Jeremy Stats
//
//  Created by Tomasz Pikula on 27/05/2024.
//

import SwiftUI

struct TeamInfoView: View {
    
    @Environment (DataModel.self) var model
    @State var teamSelectedTab = 0
    
    var body: some View {
        
        @Bindable var model = model
        
        VStack {
            Picker("", selection: $teamSelectedTab) {
                Text("Roster")
                    .tag(0)
                Text("Standings")
                    .tag(1)
            }
            .pickerStyle(SegmentedPickerStyle())
            
            if teamSelectedTab == 0 {
                RosterView()
            }
            else {
                StandingsView()
            }
        }
    }
}

#Preview {
    TeamInfoView()
        .environment(DataModel())
}
