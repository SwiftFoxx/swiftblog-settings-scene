//
//  settingssceneApp.swift
//  settingsscene
//
//  Created by Koushik Mudi on 1/13/26.
//

import SwiftUI

@main
struct settingssceneApp: App {
  var body: some Scene {
    #if os(macOS)
    Window("Settings", id: "main") {
      SettingsView()
    }
    .windowStyle(.hiddenTitleBar)
    #else
    WindowGroup {
      SettingsView()
    }
    #endif
  }
}
