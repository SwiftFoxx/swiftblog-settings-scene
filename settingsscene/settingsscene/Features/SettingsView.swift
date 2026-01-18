//
//  SettingsView.swift
//  settingsscene
//
//  Created by Koushik Mudi on 1/13/26.
//

import SwiftUI

struct SettingsView: View {
  @State private var path = NavigationPath()
  @State private var viewModel = SettingViewModel()

  var body: some View {
    NavigationStack(path: $path) {
      Form {
        Section {
          PersonView(destination: Text("K"))
        }

        Section {
          SettingRow(title: "Appearance", trailingElement: AppearanceMenu(selectedAppearance: $viewModel.selectedAppearance))
          SettingRow(title: "Accent Color") {
            ColorPickerMenu(selection: $viewModel.selectedColor)
          }
        } header: {
          Text("App Settings")
        }

        Section {
          SettingRow(title: "Enable Notifications", trailingElement: Toggle("", isOn: $viewModel.enableNotification))
            .tint(viewModel.selectedColor.color)
          if viewModel.enableNotification {
            SettingRow(title: "\(viewModel.notificationCount) Each Day Max", trailingElement: Stepper("", value: $viewModel.notificationCount).labelsHidden())
            SettingRow(title: "Also Receive Email", trailingElement: Toggle("", isOn: $viewModel.receiveEmail).labelsHidden())
              .tint(viewModel.selectedColor.color)
            SettingRow(title: "Also Receive SMS", trailingElement: Toggle("", isOn: $viewModel.receiveSMS).labelsHidden())
              .tint(viewModel.selectedColor.color)
          }
        } header: {
          Text("Notifications")
        } footer: {
          Text("When turned on, you will receive push notifications, as well as email and SMS from us.")
        }

        Section {
          SettingRow(title: "Use Cellular Data", trailingElement: Toggle("", isOn: $viewModel.useCellularData))
            .tint(viewModel.selectedColor.color)
          SettingRow(title: "Store Login Details") {
            Image(systemName: "chevron.right")
              .imageScale(.small)
              .foregroundStyle(.tertiary)
          }
          AdPickerMenu(selection: $viewModel.showAds)
          SettingRow(title: "View Cache") {
            Image(systemName: "chevron.right")
              .imageScale(.small)
              .foregroundStyle(.tertiary)
          }
        } header: {
          Text("Data Privacy And Security")
        }

      }
      .formStyle(.grouped)
      .navigationTitle("Settings")
    }
    .preferredColorScheme(viewModel.selectedAppearance.colorScheme)
  }
}

#Preview {
  SettingsView()
//    .frame(width: 900, height: 530)
}
