//
//  SettingViewModel.swift
//  settingsscene
//
//  Created by Koushik Mudi on 1/17/26.
//

import Foundation

@Observable @MainActor
final class SettingViewModel {
  var selectedAppearance = Appearance.auto
  var selectedColor = SupportedColor.blue
  var enableNotification = true
  var notificationCount = 10
  var receiveEmail = false
  var receiveSMS = false
  var useCellularData = true
  var showAds = AdType.noTrack
}
