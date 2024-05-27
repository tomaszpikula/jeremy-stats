//
//  TeamInfoView.swift
//  Jeremy Stats
//
//  Created by Tomasz Pikula on 27/05/2024.
//

import SwiftUI

struct TeamInfoView: View {
    
    @Environment (DataModel.self) var model
    
    var body: some View {
        Text("Team Info View")
    }
}

#Preview {
    TeamInfoView()
        .environment(DataModel())
}
