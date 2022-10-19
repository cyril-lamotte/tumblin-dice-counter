//
//  PlayerListView.swift
//  TD
//
//  Created by Lamotte Cyril on 11/10/2022.
//

import SwiftUI

struct PlayerListView: View {
  
  var playerList: PlayerList

  var body: some View {

    let sortedArray = playerList.players.sorted {
      $0.score > $1.score
    }
    
    if playerList.players.isEmpty {
      Text("Ajoutez un joueur")
    }

    VStack(alignment: .leading) {
      List(sortedArray) { player in
        HStack {
          Image(systemName: "dice.fill")
            .foregroundColor(player.color)
          Text(player.name)
            .fontWeight(.light)
          
          Spacer()
          Text("\(player.score)")
            .fontWeight(.bold)
        }
      }.font(.largeTitle)

    }

  }
}

struct PlayerList_Previews: PreviewProvider {
  static var previews: some View {
    VStack {
      PlayerListView(playerList: PlayerList(players: [
        Player(name: "Nora", color: Color("green"), score: 2),
        Player(name: "Vanessa", color: .blue),
      ]))
      
      Panel(panelTitle: "ttt", panelIcon: "dice", panelText: "lorem")
      
      PlayerListView(playerList: PlayerList())
    }
    .previewLayout(.sizeThatFits)
  }
}
