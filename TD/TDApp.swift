//
//  TDApp.swift
//  TD
//
//  Created by Lamotte Cyril on 10/10/2022.
//

import SwiftUI

@main
struct TDApp: App {
  var body: some Scene {
    WindowGroup {
      HomeView(playerList: PlayerList())
    }
  }
}
