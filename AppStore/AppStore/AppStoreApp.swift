//
//  AppStoreApp.swift
//  AppStore
//
//  Created by Hassan Qureshi on 08.05.2024.
//

import SwiftUI

@main
struct AppStoreApp: App {
    var body: some Scene {
        WindowGroup {
            AppsView(viewModel: .init())
        }
    }
}
