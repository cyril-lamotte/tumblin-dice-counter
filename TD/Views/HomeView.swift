//
//  HomeView.swift
//  TD
//
//  Created by Lamotte Cyril on 10/10/2022.
//

import SwiftUI

struct HomeView: View {

  @StateObject var playerList = PlayerList()
  @State var isShowingPlayerForm = false

  var body: some View {
    
    VStack(alignment: .leading) {
      VStack(alignment: .leading, spacing: 24) {
        Text("Tumblin counter")
          .font(.largeTitle)
        
        Panel(panelTitle: "Lancez les dés !", panelIcon: "dice.fill", panelText: "Puis prennez en photo le plateau de jeu.")
        
//        Button {
//          withAnimation() {
////            playerData[0].score += 1
//          }
//        } label: {
//          Label("Ajouter des points", systemImage: "plus.diamond.fill")
//        }
//        .buttonStyle(ButtonPrimary())
        
        Button {
          isShowingPlayerForm = true
        } label: {
          Label("Nouveau joueur", systemImage: "person.fill.badge.plus")
        }
        .buttonStyle(ButtonPrimary())
 
      }
      .padding(24)
      
      PlayerListView(playerList: playerList)
      
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
