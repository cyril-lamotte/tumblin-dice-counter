//
//  HomeView.swift
//  The home screen of the app.
//

import SwiftUI

struct HomeView: View {

  // playerList is a complexe object, so we need to use @StateObject to listen
  // to its changes.
  @StateObject var playerList = PlayerList()
  
  // Handle the player form visibility.
  @State var isShowingPlayerForm = false
  
  var body: some View {

    VStack(alignment: .leading) {

      VStack(alignment: .leading, spacing: 24) {
        Text("Tumblin counter")
          .font(.largeTitle)
        
        Panel(panelTitle: "Lancez les dés !", panelIcon: "dice.fill", panelText: "Puis prennez en photo le plateau de jeu.")
  
      }
      .padding(24)
      
      PlayerListView(playerList: playerList)

      VStack {
        Button {
          isShowingPlayerForm = true
        } label: {
          Label("Ajoutez un joueur", systemImage: "person.fill.badge.plus")
        }
        .buttonStyle(ButtonPrimary())
      }
      .padding(24)
      
    }
    .sheet(isPresented: $isShowingPlayerForm) {
      PlayerForm { newPlayer in
        playerList.players.append(newPlayer)
      }
      .presentationDetents([.medium])
      .presentationDragIndicator(.visible)
    }
  }
}

struct HomeView_Previews: PreviewProvider {
  static var previews: some View {
    HomeView(playerList: PlayerList(players: [
      Player(name: "Nora", color: Color("green"), score: 2),
      Player(name: "Vanessa", color: .blue),
    ]))
  }
}
