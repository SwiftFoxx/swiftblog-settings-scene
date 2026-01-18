//
//  Appearance.swift
//  settingsscene
//
//  Created by Koushik Mudi on 1/17/26.
//

import SwiftUI

enum Appearance: Int, CaseIterable {
  case auto, light, dark

  var title: String {
    switch self {
    case .auto:  return "Automatic"
    case .light: return "Light"
    case .dark:  return "Dark"
    }
  }

  var systemImage: String {
    switch self {
    case .auto:  return "circle.righthalf.filled"
    case .light: return "sun.max"
    case .dark:  return "moon"
    }
  }

  var colorScheme: ColorScheme? {
    switch self {
    case .auto:  return nil
    case .light: return .light
    case .dark:  return .dark
    }
  }
}
