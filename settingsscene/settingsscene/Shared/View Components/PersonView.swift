//
//  PersonView.swift
//  settingsscene
//
//  Created by Koushik Mudi on 1/17/26.
//


import SwiftUI

struct PersonView<D: View>: View {
  let destination: D

  var body: some View {
    NavigationLink(destination: destination) {
      HStack {
        Image("avatar")
          .resizable()
          .aspectRatio(1, contentMode: .fill)
          .frame(width: 50, height: 50)
          .clipShape(.circle)
        VStack(alignment: .leading) {
          Text("Swift Foxx")
            .font(.title2)
            .fontWeight(.semibold)
          Text("Your account, cloud, and more")
            .font(.subheadline)
            .foregroundStyle(.secondary)
        }
      }
    }
  }
}

