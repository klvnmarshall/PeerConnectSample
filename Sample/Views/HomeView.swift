//
//  HomeView.swift
//  Sample
//
//  Created by Kelvin MacHaria on 27/06/2023.
//

import SwiftUI

struct HomeView: View {
    
    @State private var currentTab: Int = 1
    
    @State private var showView: Bool = false
    @StateObject var session: MultiPeerSession
   
    var body: some View {
        TabView(selection: $currentTab) {
            WebView(session: session)
                .tag(1)
                .tabItem {
                    VStack {
                        Image(systemName: "gamecontroller")
                        Text("Game")
                    }
                }
        
            AirtimeView()
                .tag(2)
                .tabItem {
                    VStack {
                        Image(systemName: "dollarsign.arrow.circlepath")
                        Text("Airtime")
                    }
                }
        }
        .navigationTitle(currentTab == 1 ? "Game" : "Airtime")
        .toolbar {
            ToolbarItem {
                Text(session.paired ? "Paired" : "Not Paired")
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(session: MultiPeerSession(userName: "Test"))
    }
}
