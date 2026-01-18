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
          withAnimation {
            selection = color
          }
        } label: {
          HStack {
            if let targetColor = color.color {
              Image(systemName: "circle.fill")
                .symbolRenderingMode(.palette)
                .foregroundStyle(targetColor)
            } else {
              Image(systemName: "circle")
            }
            Text(color.name)
          }
        }
      }
    } label: {
      HStack {
        if let targetColor = selection.color {
          Image(systemName: "circle.fill")
            .symbolRenderingMode(.palette)
            .foregroundStyle(targetColor)
        } else {
          Image(systemName: "circle")
        }
      }
    }
    #if os(macOS)
    .menuStyle(.borderlessButton)
    .menuIndicator(.hidden)
    #endif
  }
}
