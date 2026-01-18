//
//  ColorPickerMenu.swift
//  settingsscene
//
//  Created by Koushik Mudi on 1/17/26.
//


import SwiftUI

struct ColorPickerMenu: View {
  @Binding var selection: SupportedColor

  var body: some View {
    Menu {
      ForEach(SupportedColor.allCases, id: \.rawValue) { color in
        Button {
          selection = color
        } label: {
          HStack {
            Image(systemName: "circle.fill")
              .symbolRenderingMode(.palette)
              .foregroundStyle(color.color)
            Text(color.name)
          }
        }
      }
    } label: {
      HStack {
        Image(systemName: "circle.fill")
          .foregroundStyle(selection.color)
      }
    }
    #if os(macOS)
    .menuStyle(.borderlessButton)
    .menuIndicator(.hidden)
    #endif
  }
}
