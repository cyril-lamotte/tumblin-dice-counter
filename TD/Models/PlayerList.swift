//
//  PlayerList.swift
//  TD
//
//  Created by Lamotte Cyril on 19/10/2022.
//

import Foundation

class PlayerList: ObservableObject {
  
  @Published var players: [Player]
  
  init(players: [Player] = []) {
    self.players = players
  }
  
}
