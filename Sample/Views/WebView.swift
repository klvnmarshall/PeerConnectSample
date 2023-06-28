//
//  WebView.swift
//  Sample
//
//  Created by Kelvin MacHaria on 27/06/2023.
//

import SwiftUI

struct WebView: View {
    
    @StateObject var session: MultiPeerSession

    
    var body: some View {
        if (!session.paired) {
                   HStack {
                       List(session.availablePeers, id: \.self) { peer in
                           Button(peer.displayName) {
                               session.serviceBrowser.invitePeer(peer, to: session.session, withContext: nil, timeout: 30)
                           }
                       }
                   }
                   .alert("Received an invite from \(session.recvdInviteFrom?.displayName ?? "ERR")!", isPresented: $session.recvdInvite) {
                       Button("Accept invite") {
                           if (session.invitationHandler != nil) {
                               session.invitationHandler!(true, session.session)
                           }
                       }
                       Button("Reject invite") {
                           if (session.invitationHandler != nil) {
                               session.invitationHandler!(false, nil)
                           }
                       }
                   }
               } else {
                   GameView(session: session)
               }
    }
}

struct WebView_Previews: PreviewProvider {
    static var previews: some View {
        WebView(session: MultiPeerSession(userName: "Test name"))
    }
}
