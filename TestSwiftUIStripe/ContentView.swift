//
//  ContentView.swift
//  TestSwiftUIStripe
//
//  Created by Sergey Lobanov on 24.11.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Button {
            let manager = StripePurchaseManager()
            manager.discoverReaders()
        } label: {
            Text("Discover")
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
