//
//  AdsPicker.swift
//  settingsscene
//
//  Created by Koushik Mudi on 1/17/26.
//

import SwiftUI

struct AdPickerMenu: View {
  @Binding var selection: AdType

  var body: some View {
    Picker("Ads", selection: $selection) {
      ForEach(AdType.allCases, id: \.self) { type in
        Text(type.description)
          .tag(type)
      }
    }
  }
}
