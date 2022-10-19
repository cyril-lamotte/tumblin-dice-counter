//
//  PlayerColor.swift
//  TD
//
//  Created by Lamotte Cyril on 14/10/2022.
//

import Foundation
import SwiftUI

enum PlayerColor: String, CaseIterable {
  case red = "Rouge"
  case green = "Vert"
  case blue = "Bleu"
  case black = "Noir"
  
  var diceColor: Color {
    switch self {
      case .red:
        return .red
      case .blue:
        return .blue
      case .green:
        return Color("green")
      case .black:
        return .black
    }
  }
  
}
