//
//  ButtonPrimary.swift
//  TD
//
//  Created by Lamotte Cyril on 14/10/2022.
//

import SwiftUI

struct ButtonPrimary: ButtonStyle {
  
  func makeBody(configuration: Configuration) -> some View {
    configuration.label
      .frame(maxWidth: .infinity, alignment: .center)
      .padding(16)
      .font(.custom("input", fixedSize: 22))
      .background(Color.accentColor)
      .cornerRadius(10)
      .foregroundColor(Color.white)
  }
}
