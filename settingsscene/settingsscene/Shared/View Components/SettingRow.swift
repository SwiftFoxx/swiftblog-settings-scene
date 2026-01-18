//
//  SettingRow.swift
//  settingsscene
//
//  Created by Koushik Mudi on 1/17/26.
//

import SwiftUI

struct SettingRow<E: View>: View {
  let title: String
  let trailingElement: E

  init(title: String, trailingElement: E) {
    self.title = title
    self.trailingElement = trailingElement
  }

  init(title: String, @ViewBuilder trailingElement: () -> E) {
    self.title = title
    self.trailingElement = trailingElement()
  }

  var body: some View {
    LabeledContent(title) {
      trailingElement
    }
  }
}

#Preview {
  SettingsView()
}
