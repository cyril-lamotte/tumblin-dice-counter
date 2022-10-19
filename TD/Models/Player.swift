//
//  Player.swift
//  TD
//
//  Created by Lamotte Cyril on 11/10/2022.
//

import Foundation
import SwiftUI

class Player: Identifiable, ObservableObject {
  let id = UUID()
  let name: String
  let color: Color
  @Published var score: Int
  @Published var enabled: Bool
  
  internal init(name: String, color: Color = .red, score: Int = 0, enabled: Bool = true) {
    self.name = name
    self.color = color
    self.score = score
    self.enabled = enabled
  }

}
