//
//  SupportedColor.swift
//  settingsscene
//
//  Created by Koushik Mudi on 1/17/26.
//

import SwiftUI

enum SupportedColor: Int, CaseIterable {
  case blue, purple, pink, red, orange, yellow, green

  var color: Color {
    switch self {
    case .blue:   return .blue
    case .purple: return .purple
    case .pink:   return .pink
    case .red:    return .red
    case .orange: return .orange
    case .yellow: return .yellow
    case .green:  return .green
    }
  }

  var name: String {
    switch self {
    case .blue:   return "Blue"
    case .purple: return "Purple"
    case .pink:   return "Pink"
    case .red:    return "Red"
    case .orange: return "Orange"
    case .yellow: return "Yellow"
    case .green:  return "Green"
    }
  }
}
