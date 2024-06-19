//
//  SingleStatView.swift
//  Jeremy Stats
//
//  Created by Tomasz Pikula on 02/06/2024.
//

import SwiftUI

struct SingleStatView: View {
    
    var statName: String
    var statValue: String
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 15)
                .foregroundColor(.gray)
                .opacity(0.3)
            HStack {
                Text(statName)
                Spacer()
                Text(statValue)
            }
            .padding()
        }
    }
}

#Preview {
    SingleStatView(statName: "Name", statValue: "Jeremy Sochan")
}
