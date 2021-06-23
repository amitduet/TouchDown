//
//  TouchDownApp.swift
//  TouchDown
//
//  Created by BJIT on 2021/06/03.
//

import SwiftUI

@main
struct TouchDownApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
        }
    }
}
