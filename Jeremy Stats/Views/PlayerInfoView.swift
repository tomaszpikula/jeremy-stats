//
//  PlayerInfoView.swift
//  Jeremy Stats
//
//  Created by Tomasz Pikula on 27/05/2024.
//

import SwiftUI

struct PlayerInfoView: View {
    
    @Environment (DataModel.self) var model
    
    var body: some View {
        Text("Player Info View")
    }
}

#Preview {
    PlayerInfoView()
        .environment(DataModel())
}
