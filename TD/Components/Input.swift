//
//  Input.swift
//  TD
//
//  Created by Lamotte Cyril on 14/10/2022.
//

import SwiftUI

struct Input: TextFieldStyle {
  
  func _body(configuration: TextField<Self._Label>) -> some View {
    configuration
      .frame(maxWidth: .infinity, alignment: .center)
      .padding(16)
      .font(.custom("input", fixedSize: 24))
      .background(Color("light-bg"))
      .cornerRadius(10)
      .keyboardType(.namePhonePad)
  }
}
