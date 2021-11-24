//
//  TestSwiftUIStripeApp.swift
//  TestSwiftUIStripe
//
//  Created by Sergey Lobanov on 24.11.2021.
//

import SwiftUI
import StripeTerminal

@main
struct TestSwiftUIStripeApp: App {
    init() {
        if !Terminal.hasTokenProvider() {
            Terminal.setTokenProvider(APIClient.shared)
        }
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
