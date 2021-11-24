//
//  PaymentManager.swift
//  StackPayMobile
//
//  Created by Sergey Lobanov on 22.11.2021.
//

import Combine
import CoreBluetooth
import StripeTerminal
import UIKit

let shouldUseSimulatedCardReader = true

protocol PurchaseManagerProtocol {
    func discoverReaders()
}

class StripePurchaseManager: NSObject {
}

extension StripePurchaseManager: PurchaseManagerProtocol {

    // MARK: - Instance Methods

    func discoverReaders() {
        let config = DiscoveryConfiguration(
            discoveryMethod: .bluetoothScan,
            simulated: true
        )

        Terminal.shared.logLevel = .verbose
        Terminal.shared.discoverReaders(config, delegate: self) { error in
            if let error = error {
                print("discoverReaders failed: \(error)")
            } else {
                print("discoverReaders succeeded")
            }
        }
    }
}

// MARK: - DiscoveryDelegate

extension StripePurchaseManager: DiscoveryDelegate {
    func terminal(_ terminal: Terminal, didUpdateDiscoveredReaders readers: [Reader]) {
        print("didUpdateDiscoveredReaders")
    }
}
