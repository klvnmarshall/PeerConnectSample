//
//  WelcomeView.swift
//  Sample
//
//  Created by Kelvin MacHaria on 27/06/2023.
//

import SwiftUI

struct WelcomeView: View {
    
    @State private var name: String = ""
    
    var body: some View {
        VStack(alignment: .trailing) {
            TextField("Enter your name", text: $name)
            
            NavigationLink {
                HomeView(session: MultiPeerSession(userName: name))
            } label: {
                Text("Continue")
                .padding(.vertical)
                .buttonStyle(.borderedProminent)
                .disabled(name.isEmpty)
            }

            
        }
        .padding()
        .textFieldStyle(.roundedBorder)
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
