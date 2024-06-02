//
//  SeasonStatsView.swift
//  Jeremy Stats
//
//  Created by Tomasz Pikula on 28/05/2024.
//

import SwiftUI

struct SeasonStatsView: View {
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            ScrollView {
                VStack{
                    Text("Season Stats")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .bold()
                }
            }
        }
        .foregroundStyle(.white)
    }
}

#Preview {
    SeasonStatsView()
}
