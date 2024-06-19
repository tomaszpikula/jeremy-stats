//
//  GeneralInfoView.swift
//  Jeremy Stats
//
//  Created by Tomasz Pikula on 28/05/2024.
//

import SwiftUI

struct GeneralInfoView: View {
    
    @Environment (DataModel.self) var model
    var body: some View {
        
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            ScrollView {
                VStack{
                    Text("General Info")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .bold()
                    SingleStatView(statName: "Name", statValue: "Jeremy Sochan")
                    SingleStatView(statName: "Team", statValue: "San Antonio Spurs")  
                    SingleStatView(statName: "Jersey", statValue: String(model.jeremy.jersey ?? 0))
                }
            }
            .foregroundStyle(.white)
        }
    }
}

#Preview {
    GeneralInfoView()
        .environment(DataModel())
}
