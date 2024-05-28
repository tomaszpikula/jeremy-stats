//
//  PlayerInfoView.swift
//  Jeremy Stats
//
//  Created by Tomasz Pikula on 27/05/2024.
//

import SwiftUI

struct PlayerInfoView: View {
    
    @Environment (DataModel.self) var model
    @State var playerSelectedTab = 0
    
    var body: some View {
        
        @Bindable var model = model
        
        VStack {
            Picker("", selection: $playerSelectedTab) {
                Text("General Info")
                    .tag(0)
                Text("Season Stats")
                    .tag(1)
            }
            .pickerStyle(SegmentedPickerStyle())
            
            if playerSelectedTab == 0 {
                GeneralInfoView()
            }
            else {
                SeasonStatsView()
            }
        }
    }
}

#Preview {
    PlayerInfoView()
        .environment(DataModel())
}
