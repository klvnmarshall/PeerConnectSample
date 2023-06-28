//
//  AirtimeView.swift
//  Sample
//
//  Created by Kelvin MacHaria on 27/06/2023.
//

import SwiftUI

struct AirtimeView: View {
    var body: some View {
        ScrollView {
            VStack {
                Text("This is airtime page")
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        .navigationTitle("Airtime")
        }
    }
}

struct AirtimeView_Previews: PreviewProvider {
    static var previews: some View {
        AirtimeView()
    }
}
