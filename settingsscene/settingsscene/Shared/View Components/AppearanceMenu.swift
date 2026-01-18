//
//  AppearanceMenu.swift
//  settingsscene
//
//  Created by Koushik Mudi on 1/17/26.
//


import SwiftUI

struct AppearanceMenu: View {
  @Binding var selectedAppearance: Appearance

  var body: some View {
    Menu {
      ForEach(Appearance.allCases, id: \.rawValue) { appearance in
        Button {
          selectedAppearance = appearance
        } label: {
          Label(appearance.title, systemImage: appearance.systemImage)
        }
      }
    } label: {
      Label("appearance", systemImage: selectedAppearance.systemImage)
        .labelStyle(.iconOnly)
    }
    .foregroundStyle(.primary)
    .menuStyle(.borderlessButton)
    .menuIndicator(.hidden)
  }
}