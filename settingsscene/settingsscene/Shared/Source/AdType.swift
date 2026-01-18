//
//  AdType.swift
//  settingsscene
//
//  Created by Koushik Mudi on 1/17/26.
//

import Foundation

enum AdType: Int, CaseIterable {
  case noTrack, show

  var description: String {
    switch self {
    case .noTrack: return "Ask App Not to Track"
    case .show: return "Show Personalized Ads"
    }
  }
}
